#!/usr/bin/env bash
mkdir temp
cd temp
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/34M_17.gltf
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/34M_17.bin
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/base_AO.png
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/frame_AO.png
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/stairs_plt_AO.png
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/truss_2_AO.png
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/truss_dish_AO.jpg
curl -O https://docs.mapbox.com/mapbox-gl-js/assets/34M_17/wheels_AO.png
gltf-pipeline -i 34M_17.gltf -b
cp 34M_17-processed.glb ../model.glb