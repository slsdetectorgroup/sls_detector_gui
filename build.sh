# set -x

# declare -a CMAKE_PLATFORM_FLAGS
# if [[ ${HOST} =~ .*linux.* ]]; then
#     CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="${RECIPE_DIR}/cross-linux.cmake")
# fi


mkdir build
cd build
echo $PREFIX
echo "------------- prefix----------"
echo $CONDA_PREFIX

cmake .. \
      -DCMAKE_PREFIX_PATH=$CONDA_PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DUSE_TEXTCLIENT=OFF \
      -DUSE_RECEIVER=OFF \
      -DUSE_GUI=ON \
      -DCMAKE_BUILD_TYPE=Debug \
      -DUSE_HDF5=OFF\
     

cmake --build . -- -j8
cmake --build . --target install
