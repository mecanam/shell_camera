# shell_camera
"shell_camera" is a shell script for communicating camera images between computers.  
It can be used primarily for robot communication and surveillance cameras.
# Requirement
OS: **RaspberryPiOS** or **ubuntu(22.04 or later)**  

# Installation
If you don't have **ffmpeg** in your environment, please install it.  
Please clone this repository and set up the ffmpeg environment on both the sending and receiving machines.  
```bash
sudo apt install ffmpeg
```
## Sender
On the sending side, we'll use camera_stream-st.sh.  
First, open this file in an editor such as vim  
and change the **"<ノートPCのIP>"** part below to the IP address of your receiving machine.  
Next, change the permissions on this file to make it executable:  
```bash
chmod +x camera_stream-st.sh
```
## Receiver
On the receiving side, use camera_stream-re.sh.  
There is no need to edit the contents of the file on the receiving side.  
Just change the permissions to grant execution privileges, just like on the sending side.  
```bash
chmod +x camera_stream-re.sh
```
# Usage
## Sender
Run the following this command.  
```bash
./camera_stream-st.sh
```
## Receiver
Run the following this command.  
```bash
./camera_stream-re.sh
```
# Note
I don't test environments under Windows and Mac.  

# Author
* めかなむ(mecanam)
* X(Twitter) : https://x.com/Mecanam_Manuf  


