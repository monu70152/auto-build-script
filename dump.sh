git clone https://github.com/AndroidDumps/dumpyara
cd dumpyara
bash setup.sh
pip3 install --upgrade protobuf==3.20.0
bash dumpyara.sh "https://bigota.d.miui.com/V13.0.3.0.SKCEUXM/miui_VEUXEEAGlobal_V13.0.3.0.SKCEUXM_86cf35a887_12.0.zip"
cd working
git init
git add -A
git checkout -b miui_VEUXEEAGlobal_V13.0.3.0.SKCEUXM_86cf35a887_12.0
git config --global user.name "Monu"
git config --global user.email "sunil9802506051@gmail.com"
git commit -m"veux: dump of miui_VEUXEEAGlobal_V13.0.3.0.SKCEUXM_86cf35a887_12.0"
git remote add oo https://gitlab.com/monu70152/dump.git
git push -f
