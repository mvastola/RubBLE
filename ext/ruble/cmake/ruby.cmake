macro(setup_ruby build_target)
    #set(_Ruby_DEBUG_OUTPUT ON)
    set(RUBY_FIND_VERSION 3.2)
    find_package(Ruby 3.2 REQUIRED Ruby_FIND_VIRTUALENV)
    target_link_libraries("${build_target}" PUBLIC ${Ruby_LIBRARIES})
    target_include_directories("${build_target}" PUBLIC ${Ruby_INCLUDE_DIRS})
    target_include_directories("${build_target}" PRIVATE ${RICE_INCLUDE_PATH})
    # TODO: this should only be enabled if we're running from the build machine, I think
    set_target_properties("${build_target}" PROPERTIES INSTALL_RPATH_USE_LINK_PATH ON)
    message(STATUS "libruby ${Ruby_VERSION} found at ${Ruby_LIBRARY}")
    message(STATUS "Rice ${RICE_VERSION} found in ${RICE_INCLUDE_PATH}")
endmacro()
