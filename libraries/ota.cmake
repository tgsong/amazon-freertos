afr_module( NAME ota )

# Include Json library's source and header path variables.
include("${CMAKE_CURRENT_LIST_DIR}/ota/otaFilePaths.cmake")

afr_module_sources(
    ${AFR_CURRENT_MODULE}
    PRIVATE
        ${OTA_SOURCES}
        ${OTA_OS_FREERTOS_SOURCES}
        ${OTA_MQTT_SOURCES}
)

afr_module_include_dirs(
    ${AFR_CURRENT_MODULE}
    PUBLIC
        ${OTA_INCLUDE_PUBLIC_DIRS}
        ${OTA_INCLUDE_OS_FREERTOS_DIRS}
    PRIVATE
        ${OTA_INCLUDE_PRIVATE_DIRS}
)

# Dependency of module on logging stack.
afr_module_dependencies(
    ${AFR_CURRENT_MODULE}
    PUBLIC
        AFR::core_mqtt
)
