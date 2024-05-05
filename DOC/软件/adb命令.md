---
created: 2024-04-15T00:00:00.000Z
---

| 命令                     | 命令示例                                      | 功能解释说明                    |
| ---------------------- | ----------------------------------------- | ------------------------- |
| adb devices            | adb devices                               | 列出所有连接的设备和模拟器             |
| adb connect            | adb connect 192.168.1.100                 | 通过IP地址连接到远程设备             |
| adb disconnect         | adb disconnect 192.168.1.100              | 断开与远程设备的连接                |
| adb kill-server        | adb kill-server                           | 停止ADB服务器                  |
| adb start-server       | adb start-server                          | 启动ADB服务器                  |
| adb push               | adb push ./file.txt /sdcard/file.txt      | 将文件从本地复制到设备上的sdcard目录     |
| adb pull               | adb pull /sdcard/file.txt ./file.txt      | 将文件从设备的sdcard目录复制到本地      |
| adb install            | adb install ./app.apk                     | 安装应用                      |
| adb uninstall          | adb uninstall com.example.app             | 卸载应用                      |
| adb logcat             | adb logcat                                | 查看设备的log输出                |
| adb shell              | adb shell                                 | 启动一个远程shell在设备上执行命令       |
| adb reboot             | adb reboot                                | 重启连接的设备                   |
| adb get-state          | adb get-state                             | 获取设备状态                    |
| adb get-serialno       | adb get-serialno                          | 获取设备的序列号                  |
| adb shell getprop      | adb shell getprop                         | 获取设备的属性信息                 |
| adb forward            | adb forward tcp:6100 tcp:7100             | 将设备的7100端口转发到本地计算机的6100端口 |
| adb shell screencap    | adb shell screencap -p /sdcard/screen.png | 在设备上进行屏幕截图                |
| adb shell screenrecord | adb shell screenrecord /sdcard/record.mp4 | 录制设备屏幕上发生的操作              |
