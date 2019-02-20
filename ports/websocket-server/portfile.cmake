include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/websocket_server)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/websocket_server
	REF v0.0.4
	SHA512 b56ccafea9923e4cf0b032ec3c4ede92564c20ab3655adce8b29063758b0b678d04c4bf0dd780c97442219fb9eb68fd3965fdfdcb1f41eec3788c985b77062ca
    )

vcpkg_configure_cmake( 
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/websocket_server)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/websocket-server RENAME copyright)

vcpkg_install_cmake()
