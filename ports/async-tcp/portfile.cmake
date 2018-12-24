include(vcpkg_common_functions)

set(SOURCE_PATH ${CURRENT_BUILDTREES_DIR}/src/async_tcp)

vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO xrootpi/async_tcp
	REF v0.0.2
	SHA512 314b4ab114051fd13a450d96c85c7b009e9ef8df59e7cf5b3fae0a9d16fbe3fe2db25600ade263bbe6eb0b911b742aaecece874f7c2628bbe5406293a832ad25
    )

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
	PREFER_NINJA
)

file(INSTALL ${SOURCE_PATH}/include DESTINATION ${CURRENT_PACKAGES_DIR}/include)

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/async-tcp RENAME copyright)

vcpkg_install_cmake()
