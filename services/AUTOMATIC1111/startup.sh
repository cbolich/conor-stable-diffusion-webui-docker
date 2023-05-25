# install all packages for the extensions
shopt -s nullglob
list=(./extensions/*/requirements.txt)
for req in "${list[@]}"; do
  pip install -q -r "$req"
done

pip install -q --force-reinstall opencv-python 'transformers>=4.24'

apt-get update && apt-get install -y fontconfig

pip install trimesh
pip install moviepy
pip install tqdm
pip install transforms3d==4.0.1
pip install rembg
pip install imageio-ffmpeg
pip install vispy
