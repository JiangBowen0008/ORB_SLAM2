echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Configuring and building Thirdparty/g2o ..."

cd ../../g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "Configuring and building Thirdparty/glew-2.1.0 ..."
cd ../../glew-2.1.0
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make install -j

echo "Configuring and building Thirdparty/Pangolin ..."
cd ../../Pangolin-0.6
sh ./install_prerequisites.sh -m apt all
cd build
cmake ./cmake
make install -j

echo "Uncompress vocabulary ..."

cd ../../../Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..


echo "Configuring and building ORB_SLAM2 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
