
Masternode Setup Guide
======================
## Contents
- Introduction
- Configuration of your control wallet
- VPS remote wallet install
- Configuration of your Masternode
- Start your Masternode
- Teardown your Masternode
## Introduction
This guide is for a single masternode, on a Ubuntu 16.04 64bit server (VPS) running headless and will be controlled from the wallet on your local computer (Control wallet). The wallet on the the VPS will be referred to as the Remote wallet.
You will need your server details for progressing through this guide.

First the basic requirements:

* 10,000 ELLI
* A main computer (Your everyday computer). This will run the control wallet, hold your collateral 10,000 ELLI and can be turned on and off without affecting the masternode.
* Masternode Server (VPS – The computer that will be on 24/7)
* A unique IP address for your VPS / Remote wallet
(For security reasons, you’re are going to need a different IP for each masternode you plan to host)

The basic reasoning for these requirements is that, you get to keep your ELLI in your local wallet and host your masternode remotely, securely.

## Configuration

1) Using the control wallet, enter the debug console (Tools > Debug console) and type the following command:

        masternode genkey

    (This will be the masternode’s privkey. We’ll use this later…)

2) Using the control wallet still, enter the following command:

        getaccountaddress chooseAnyNameForYourMasternode

3) 
    - Still in the control wallet, send 10,000 ELLI to the address you generated in step 2 (Be 100% sure that you entered the address correctly. You can verify this when you paste the address into the “Pay To:” field, the label will autopopulate with the name you chose”, also make sure this is exactly 10,000 ELLI; No less, no more.)
    - Be absolutely 100% sure that this is copied correctly. And then check it again. We cannot help you, if you send 10,000 ELLI to an incorrect address.
    - Wait 6 confirmations of this transaction

4) Still in the control wallet, enter the command into the console:

        masternode outputs
    (This gets the proof of transaction of sending 10,000)

5) Using the control wallet, open the masternode configuration file (Tools > Open Masternode Configuration File) and add the following line to it:

        <Name of Masternode(Use the name you entered earlier for simplicity)> <Unique IP address>:61317 <The result of Step 1> <Result of Step 4> <The number after the long line in Step 4>

        Example: mn1 31.14.135.27:61317 892WPpkqbr7sr6Si4fdsfssjjapuFzAXwETCrpPJubnrmU6aKzh c8f4965ea57a68d0e6dd384324dfd28cfbe0c801015b973e7331db8ce018716999 1

    Substitute it with your own values and without the “<>”s

## VPS Remote wallet install
7) Install the latest version of the ELLI wallet onto your masternode. The lastest version can be found here: https://github.com/elliotproject/elli/releases

    Go to your home directory:

        cd ~
    From your home directory, download the latest version from the ELLI GitHub repository:

        wget https://github.com/elliotproject/elli/releases/download/v0.9.12/elli-0.9.12-x86_64-linux-gnu.tar.gz
    The link above is for Ubuntu (or similar), make sure you choose the correct version of the core wallet if you are not using Ubuntu from: 
https://github.com/elliotproject/elli/releases
Unzip and extract:  

        tar -zxvf elli-0.9.12-x86_64-linux-gnu.tar.gz

    Go to your ELLI 0.9.12 bin directory:

        cd ~/elli-0.9.12/bin
    Note: If this is the first time running the wallet in the VPS, you’ll need to attempt to start the wallet

        ./ellid -daemon
        ./elli-cli stop
    this will place the config files in your ~/.elli data directory
## Configuration of your Masternode
8) Now on the masternodes, Open the elli.conf file 

        nano ~/.elli/elli.conf

    and make it look like this:

        rpcuser=<long random username>
        rpcpassword=<longer random password>
        rpcallowip=127.0.0.1
        listen=0
        server=1
        daemon=1
        logtimestamps=1
        maxconnections=256
        masternode=1
        externalip=<vps unique public ip address>
        bind=<vps unique public ip address>
        masternodeaddr=<vps unique public ip address>:61317
        masternodeprivkey=<result of step 1>

    Make sure to replace rpcuser and rpcpassword with your own.

9) Close elli.conf 

        ctrl+o -> enter -> ctrl+x

    and restart the control wallet.

## Start your masternode

10) Now, you need to finally start these things in this order
- Go to your ELLI 0.9.12 bin directory:

        cd ~/elli-0.9.12/bin

- Start the daemon client in the VPS

      ./ellid

- From the Control wallet debug console

      startmasternode alias false <mymnalias>

  where <mymnalias> is the name of your masternode alias (without brackets)

  The following should appear:
    
      “overall” : “Successfully started 1 masternodes, failed to start 0, total 1”,
      “detail” : [
      {
      “alias” : “<mymnalias>”,
      “result” : “successful”,
      “error” : “”
      }

- Back in the VPS, start the masternode

      ./elli-cli startmasternode local false

- A message “masternode successfully started” should appear

11) Use the following command to check status:

        ./elli-cli masternode status

    You should see something like:

        {
        “txhash” : “334545645643534534324238908f36ff4456454dfffff51311”,
        “outputidx” : 0,
        “netaddr” : “45.11.111.111:61317”,
        “addr” : “E6fujc45645645445645R7TiCwexx1LA1”,
        “status” : 4,
        “message” : “Masternode successfully started”
        }

    Congratulations! You have successfully created your masternode!

## Tearing down a Masternode
1) How do I stop running mn1 on my VPS hoster and delete mn1 from my ‘ELLI Core – Wallet’?

    * ./elli-cli stop from the masternode to stop the wallet.
    * Then from your controller wallet PC, edit your masternode.conf, delete the mn1 masternode line entry.
    * Now restart the controller wallet.
    * your 10K will now be unlocked.

2) How do I get the 10k back that I’ve send to my mn1 address at the beginning of the mn1 setup?

    * You don’t need to “get that back” as it is already in your wallet.
    Being in the different address is not an issue as that’s also your address.

3) Can I use this 10k normally on my wallet then again, and sell it or stake it normally like before?

    * Yes!