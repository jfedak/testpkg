#!/usr/bin/python3

import argparse

print("Hello Arch user!")
print("This is an example AUR package")
print("Enjoy :)")

# parse arguments
parser = argparse.ArgumentParser(description='Change xfce configuration. \
                                            You can provide paths to you own config files \
                                            but be sure that they match the required format.')
parser.add_argument("--desktop-config", dest="desktop_configuration_path", 
                    required=False, help="Path to xfce-desktop configuration file", 
                    metavar="FILE")
parser.add_argument("--panel-config", dest="panel_configuration_path", 
                    required=False, help="Path to xfce-panel configuration file", 
                    metavar="FILE")
parser.add_argument("--terminal-config", dest="terminal_configuration_path", 
                    required=False, help="Path to xfce-terminal configuration file", 
                    metavar="FILE")

args = parser.parse_args()

print(args.desktop_configuration_path)
print(args.panel_configuration_path)
print(args.terminal_configuration_path)

