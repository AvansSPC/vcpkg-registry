# where to get the package sources from
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    URL AvansSPC/Pico2D            
    HEAD_REF main
    REF 499657cef91df211d55a29dd5c660d43f3ffef77
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)