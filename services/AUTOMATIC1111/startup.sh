# install all packages for the extensions
shopt -s nullglob
list=(./extensions/*/requirements.txt)
for req in "${list[@]}"; do
  pip install -q -r "$req"
done

pip install -q --force-reinstall opencv-python 'transformers>=4.24'

apt-get update && apt-get install -y fontconfig build-essential 

pip install trimesh
pip install moviepy
pip install tqdm
pip install transforms3d==4.0.1
pip install networkx==2.3
pip install cynetworkx
pip install scikit-image
pip install rembg
pip install imageio-ffmpeg
pip install vispy
pip install svglib
pip install rich
pip install numexpr
pip install matplotlib
pip install pandas
pip install av
pip install pims
pip install imageio_ffmpeg
pip install gdown
pip install mediapipe
pip install fvcore
pip install color-matcher
