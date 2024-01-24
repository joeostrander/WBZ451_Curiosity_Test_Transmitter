//**********************************************************************************************
// HEADER FILES
//**********************************************************************************************
#include "definitions.h"
#include "transmit.h"

//*********************************************************************************************
// CONSTANTS AND MACROS
//*********************************************************************************************
#define TRANSMIT_TASK_STACK_SIZE    512
#define TRANSMIT_TASK_PRIORITY      1
#define TRANSMIT_TASK_FREQ_HZ       10

#define BUTTON_TRIGGER              (1<<0)
#define BUTTON_DEC                  (1<<1)
#define BUTTON_INC                  (1<<2)
#define BUTTON_PAIRING              (1<<3)
#define FRAME_ID_GUN_DATA           0

//**********************************************************************************************
// TYPE DEFINITIONS AND STRUCTURES
//**********************************************************************************************
typedef struct
{
    uint8_t frame_identifier;
    uint8_t button_states;
    uint8_t heartbeat;
    char serial[6];
} rf_payload_t;

//*********************************************************************************************
// PRIVATE VARIABLES
//*********************************************************************************************
static TaskHandle_t transmit_task_id;
static rf_payload_t rf_payload = {FRAME_ID_GUN_DATA, 0, 0,{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF}};
//static uint8_t button_states_previous = 0;
static bool transmit_enabled = true;

//*********************************************************************************************
// PRIVATE FUNCTION PROTOTYPES
//*********************************************************************************************
static void TRANSMIT_Task(void);
static void send_payload(void);

//*********************************************************************************************
// PUBLIC FUNCTIONS
//*********************************************************************************************

void TRANSMIT_init(void)
{
    xTaskCreate((TaskFunction_t)TRANSMIT_Task,
                "TRANSMIT_Tasks",
                TRANSMIT_TASK_STACK_SIZE,
                NULL,
                TRANSMIT_TASK_PRIORITY,
                &transmit_task_id);
}

void TRANSMIT_enable(bool enable)
{
    transmit_enabled = enable;
}

//*********************************************************************************************
// PRIVATE FUNCTIONS
//*********************************************************************************************

static void TRANSMIT_Task(void)
{
    // Initialize the xLastWakeTime variable with the current time.
    TickType_t xLastWakeTime = xTaskGetTickCount();
    
    
    // Enter the cyclic portion of the task
    for(;;)
    {
        // Wait for the RTOS cyclic timer to expire
        vTaskDelayUntil(&xLastWakeTime, configTICK_RATE_HZ / TRANSMIT_TASK_FREQ_HZ);
        
        send_payload();
        
        
    }
}

static void send_payload(void)
{
    rf_payload.button_states = 0;

    if (BUTTON_1_Get() == 0)
        rf_payload.button_states |= BUTTON_TRIGGER;

    static uint8_t txData[TX_BUFFER_SIZE];
    rf_payload.heartbeat++;

    uint8_t* ptr = txData;
    *ptr++ = '[';   // Start of frame
    *ptr++ = sizeof(rf_payload_t);
    memcpy(ptr, &rf_payload, sizeof(rf_payload_t));
    ptr+=sizeof(rf_payload_t);
    *ptr++ = ']';   // End of frame
    
    static uint8_t seqNum = 0;
    if(deviceTable[DEST_DEV_INDEX].valid == true)
    {
////            SYS_CONSOLE_PRINT("\r Unicast Data to first device in device table\n");
//        appNwkParam.unicastFlagPredefData = true;

        uint8_t length = ptr - txData;
        app_P2P_Phy_TransmitFrame(txData, length, 1, seqNum++, true, false, false);
    }
}