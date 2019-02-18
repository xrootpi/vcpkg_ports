include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/websocket_server)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/websocket_server
	REF v0.0.3
	SHA512 0a27a68c3bc6a6386c7bbcb19ceefc7956c46e71ea30e82a576e49a03124e7c73bfe6a5d73c8f96a579ae1ab5c758d8d4782e252081f2b95225b68e5c44831c0
    )

vcpkg_configure_cmake( 
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/websocket-server)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/websocket-server RENAME copyright)

vcpkg_install_cmake()
