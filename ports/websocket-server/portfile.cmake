include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/websocket_server)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/websocket_server
	REF v0.0.8
	SHA512 a86d67bb12c15a9f78a47fe5585435dec7f3761ddedf990566f69379e19ccc31d9766ea36ddeef9120eab112c1188f2658aa0b76ab5f8e52435dcf58e2bbce90
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
