

RESOURCES_LIBRARY()

IF(GOSTD_VERSION STREQUAL 1.12.10)
    IF (HOST_OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(GO_TOOLS sbr:1138630560)
    ELSEIF (HOST_OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(GO_TOOLS sbr:1138632125)
    ELSEIF (HOST_OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(GO_TOOLS sbr:1138633684)
    ELSE()
        MESSAGE(FATAL_ERROR Unsupported host platform)
    ENDIF()
ELSEIF(GOSTD_VERSION STREQUAL 1.13.3)
    IF (HOST_OS_LINUX)
        DECLARE_EXTERNAL_RESOURCE(GO_TOOLS sbr:1171346788)
    ELSEIF (HOST_OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(GO_TOOLS sbr:1171347587)
    ELSEIF (HOST_OS_WINDOWS)
        DECLARE_EXTERNAL_RESOURCE(GO_TOOLS sbr:1171348257)
    ELSE()
        MESSAGE(FATAL_ERROR Unsupported host platform)
    ENDIF()
ELSE()
    MESSAGE(FATAL_ERROR Unsupported version [$GOSTD] of Go Standard Library)
ENDIF()

END()
