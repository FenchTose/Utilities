echo "compiling $1"
if [[ $1 == *.c ]]
then
    gcc -ggdb -I/usr/include/pcl-1.6 -I/usr/include/eigen3 -o `basename $1 .c` $1 `pkg-config --libs pcl_apps-1.6 pcl_common-1.6 pcl_features-1.6 pcl_filters-1.6 pcl_geometry-1.6 pcl_io-1.6 pcl_kdtree-1.6 pcl_keypoints-1.6 pcl_octree-1.6 pcl_registration-1.6 pcl_sample_consensus-1.6 pcl_search-1.6 pcl_segmentation-1.6 pcl_surface-1.6 pcl_tracking-1.6 pcl_visualization-1.6 flann`;
elif [[ $1 == *.cpp ]]
then
    g++ -ggdb -I/usr/include/pcl-1.6 -I/usr/include/eigen3 -o `basename $1 .cpp` $1 `pkg-config --libs pcl_apps-1.6 pcl_common-1.6 pcl_features-1.6 pcl_filters-1.6 pcl_geometry-1.6 pcl_io-1.6 pcl_kdtree-1.6 pcl_keypoints-1.6 pcl_octree-1.6 pcl_registration-1.6 pcl_sample_consensus-1.6 pcl_search-1.6 pcl_segmentation-1.6 pcl_surface-1.6 pcl_tracking-1.6 pcl_visualization-1.6 flann`;
else
    echo "Please compile only .c or .cpp files"
fi
echo "Output file => ${1%.*}"
