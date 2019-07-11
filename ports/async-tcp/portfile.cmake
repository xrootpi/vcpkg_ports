include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/async_tcp)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/async_tcp
	REF v0.0.7
	SHA512 7b9bf708aa12757bedeaac61dc2f1a01d40f86a78c2e3b0bab6c170fffa7a274bf1bf27100c7995df4cc51b9560c04ee7a4042278499db100ccc5786d4f61827
    )

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include/async_tcp/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/async_tcp)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/async-tcp RENAME copyright)

vcpkg_install_cmake()
