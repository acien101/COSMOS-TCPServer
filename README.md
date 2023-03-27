# COSMOS-TCPServer
Some exaples for using Ball Aerospace COSMOS over a TCP server.

This repository has two examples:
* [tcpServerBlinkTest.js](https://github.com/acien101/COSMOS-TCPServer/blob/master/tcpServerBlinkTest.js): A nodejs script generates a server that listen to incoming telemetry and sends a sample packet each second. It creates a TCP server.

### [tcpServerBlinkTest.js](https://github.com/acien101/COSMOS-TCPServer/blob/master/tcpServerBlinkTest.js)

This test creates a TCP Server emulating this [arduino code with COSMOS](https://bitbucket.org/dholshouser/alagna/src/ebe7ffb896eee50566d33317a166e98464611eda/doc/tutorials/blink/src/Blink/Blink.ino?at=master&fileviewer=file-view-default).

[BLINK_TCP_TEST](https://github.com/acien101/COSMOS-TCPServer/tree/master/BLINK_TCP_TEST) is the COSMOS project for receive the telemetry and to send the telecomands.

The steps to setup the project are:
1. Copy the file ``configsample.json` into `config.json` with you variables.
2. Install COSMOS 5.0 and run it
3. Go to Admin > Plugins > Install the .gem file on `cosmos-simple-tcp/` folder
4. Run the server with `node tcpServerBlinkTest.js`
5. Go to COSMOS and connect to it

### [tcpDecodeAPRS.js](https://github.com/acien101/COSMOS-TCPServer/blob/master/tcpDecodeAPRS.js)

This test decode APRS with the program [Direwolf](https://github.com/wb2osz/direwolf) from an audio source, and pipe the output using CCSDS standard to a TCP port for COSMOS. I used an Baofeng UV-5R connected to the audio input of my computer.

[CCSDS_APRS_TCP](https://github.com/acien101/COSMOS-TCPServer/tree/master/CCSDS_APRS_TCP) is the COSMOS project for receive the APRS output from direwolf.
