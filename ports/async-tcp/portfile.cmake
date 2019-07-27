include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/async_tcp)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/async_tcp
	REF v0.0.9
	SHA512 36a984d6a62e48ab53dfb9e0454520181b09ea570ed96d7dfb9104c441c9af35241e2584d44f33e76f6a4e5508d4715bdf48554a4bf885c99b193628d09d093a
    )

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include/async_tcp/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/async_tcp)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/async-tcp RENAME copyright)

file(INSTALL ${SOURCE_PATH}/async-tcp-config.cmake DESTINATION ${CURRENT_PACKAGES_DIR}/share/async-tcp)

vcpkg_install_cmake()
vcpkg_test_cmake(PACKAGE_NAME Async-tcp)
