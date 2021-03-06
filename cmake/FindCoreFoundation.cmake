# Find CoreFoundation.framework
# This will define :
#
# COREFOUNDATION_FOUND
# COREFOUNDATION_LIBRARIES
# COREFOUNDATION_LDFLAGS
#

find_path(COREFOUNDATION_INCLUDE_DIR NAMES CoreFoundation.h)
find_library(COREFOUNDATION_LIBRARIES NAMES CoreFoundation)
if(COREFOUNDATION_INCLUDE_DIR AND COREFOUNDATION_LIBRARIES)
	if(NOT CoreFoundation_FIND_QUIETLY)
		message(STATUS "Found CoreFoundation ${COREFOUNDATION_LIBRARIES}")
	endif()
	set(COREFOUNDATION_FOUND TRUE)
	set(COREFOUNDATION_LDFLAGS "-framework CoreFoundation")
endif()

if(CoreFoundation_FIND_REQUIRED AND NOT COREFOUNDATION_FOUND)
	message(FATAL_ERROR "CoreFoundation not found")
endif()

mark_as_advanced(
	COREFOUNDATION_INCLUDE_DIR
	COREFOUNDATION_LIBRARIES
)
