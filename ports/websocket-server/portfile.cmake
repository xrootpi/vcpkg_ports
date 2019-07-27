include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/websocket_server)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/websocket_server
	REF v0.0.9
	SHA512 c838fd0158ca14d000113592d7ca7770b1be05cd5e6c8f12275044aa5de15bd73fa30990c2f8d448b3fb6e30421bad8314489eb5191a9b1bd08e54cc04f70662
    )

vcpkg_configure_cmake( 
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include/websocket_server/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/websocket_server)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/websocket-server RENAME copyright)

file(INSTALL ${SOURCE_PATH}/websocket-server-config.cmake DESTINATION ${CURRENT_PACKAGES_DIR}/share/websocket-server)

vcpkg_install_cmake()
vcpkg_test_cmake(PACKAGE_NAME Websocket-server)
