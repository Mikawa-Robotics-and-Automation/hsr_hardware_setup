# hsr_hardware_setup

HSR実機を動かすのに必要なリポジトリを引っ張ってくる

```
source /opt/ros/humble/setup.bash
sudo apt update # rosdep installできるように最新にしておく
```

# workspace内で
```
mkdir src
cd src
git clone https://github.com/Mikawa-Robotics-and-Automation/hsr_hardware_setup
cd hsr_hardware_setup
source pull_repos.bash
cd ../..
rosdep install --from-paths . -y --ignore-src
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```