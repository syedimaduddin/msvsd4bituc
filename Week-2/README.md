### Function for pre-layout and post-layout simulation
```
Fn = [(B + D).(A + C) + E.F]'
```

## Installation of Align Tool
```
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
git clone https://github.com/ALIGN-analoglayout/ALIGN-public
cd ALIGN-public

#Create a Python virtualenv
python3 -m venv general
source general/bin/activate
python3 -m pip install pip --upgrade

# Install ALIGN as a USER
pip install -v .

# Install ALIGN as a DEVELOPER
pip install -e .

pip install setuptools wheel pybind11 scikit-build cmake ninja
pip install -v -e .[test] --no-build-isolation
pip install -v --no-build-isolation -e . --no-deps --install-option='-DBUILD_TESTING=ON'
```
## Making ALIGN Portable to Sky130 tehnology
```
git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-sky130
```
