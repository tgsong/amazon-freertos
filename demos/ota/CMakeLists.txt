afr_demo_module( ota_core_mqtt )

afr_set_demo_metadata(ID "OTA_UPDATE_DEMO")
afr_set_demo_metadata(DESCRIPTION "An example on how to update firmware over the air via AWS IoT")
afr_set_demo_metadata(DISPLAY_NAME "OTA Update")

afr_module_sources(
    ${AFR_CURRENT_MODULE}
    INTERFACE
        "${CMAKE_CURRENT_LIST_DIR}/ota_demo_core_mqtt.c"
)
afr_module_dependencies(
    ${AFR_CURRENT_MODULE}
    INTERFACE
        AFR::ota
        AFR::retry_utils
        AFR::mqtt_subscription_manager
)

afr_module_include_dirs(
    ${AFR_CURRENT_MODULE}
    INTERFACE
        "${CMAKE_CURRENT_LIST_DIR}"
        "${LOGGING_INCLUDE_DIRS}"
        ${OTA_INCLUDE_PUBLIC_DIRS}
        ${OTA_INCLUDE_PRIVATE_DIRS}
        ${OTA_INCLUDE_OS_POSIX_DIRS}
        ${MQTT_INCLUDE_PUBLIC_DIRS}
)
