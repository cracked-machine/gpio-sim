
SRC=src
BUILD=build

rm -rf ${BUILD} || true
mkdir ${BUILD}
cmake -G Ninja -S ${SRC} -B ${BUILD} -DCMAKE_EXPORT_COMPILE_COMMANDS=1
cmake --build ${BUILD} 
