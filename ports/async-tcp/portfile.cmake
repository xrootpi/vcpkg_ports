include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/async_tcp)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/async_tcp
	REF v0.0.7
	SHA512 02c935559ae2993880d854b87a8a95ddeb5ed7b83392580181807073f9470821090f0c6c6cc7e6de70389fe55556ca0f29824ac6d6263876c3e8583676a76fed
    )

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include/async_tcp/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/async_tcp)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/async-tcp RENAME copyright)

vcpkg_install_cmake()
