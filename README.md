# SetupVM-Debian


README - System Configuration Script
Description

This Bash script automates system updates, installs essential packages, and, if necessary, configures a static IP address on a Debian-based system.
Features

    System update via apt.
    Installation of useful packages: htop, git, curl, iptables.
    Option to configure a static IP address using a script cloned from GitHub.

Prerequisites

    Debian-based operating system (e.g., Ubuntu).
    Administrator access (sudo).

Usage
1. Download and Prepare the Script

Clone the repository (or create a file for the script) and make the script executable:

bash

git clone https://github.com/BassPeak1234/SetupVM-Debian/

cd SetupVM-Debian

chmod +x setupDebian.sh


2. Run the Script

To execute the script, use the following command:

./setupDebian.sh

The script will then prompt you to decide whether or not to configure a static IP address. Simply respond "yes" or "no" when prompted.



3. Script Steps

    System Update: The script starts by updating the package list and installing available upgrades.

    Package Installation: The script installs the following packages:
        htop: An interactive process viewer.
        git: A distributed version control system.
        curl: A tool for transferring data with URLs.
        iptables: A tool to configure the Linux firewall rules.

    Static IP Configuration: The script asks the user if they want to configure a static IP address:
        If the answer is "yes", the script clones the ChangeIP repository and runs the ChangeIP.sh script to configure the static IP.
        If the answer is "no", the script simply exits.


The script will then prompt you to decide whether or not to configure a static IP address. Simply respond "yes" or "no" when prompted.
Notes

  This script must be run with administrator privileges.
  
  Ensure that the system is connected to the Internet so the script can download packages and clone the GitHub repository.
 
  The script is designed to be used on a Debian-based system. Users of other distributions may encounter compatibility issues.
