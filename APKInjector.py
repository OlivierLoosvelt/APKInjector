#! python2
from bs4 import BeautifulSoup as Soup
from time import sleep
import sys
import os
import subprocess

soup = ""
folder = ""

def findPackage():
    #os.system('apktool --version')
    global soup
    global folder
    curr_dir = os.getcwd()

    appname = sys.argv[1].split('.apk')[0]
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
        print('Main Activity Location: ' + changeToFolder(activity))
        print folder + '/smali/' + changeToFolder(activity)

def addPackage(name):
    global soup
    manifest = soup.find_all('manifest')
    print('\r\nMain Activity Location: '+ changeToFolder(manifest[0]['package'] + name))
    print folder + '/smali/' +  changeToFolder(manifest[0]['package'] + name)

def changeToFolder(string):
    return string.replace('.', '/')

def init():
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
    print("                                                                                    ")
    print("  __  __             _  __           _        _                _                    ")
    print(" |  \/  | __ _ _ __ (_)/ _| ___  ___| |_     / \   _ __   __ _| |_   _ _______ _ __ ")
    print(" | |\/| |/ _` | '_ \| | |_ / _ \/ __| __|   / _ \ | '_ \ / _` | | | | |_  / _ \ '__|")
    print(" | |  | | (_| | | | | |  _|  __/\__ \ |_   / ___ \| | | | (_| | | |_| |/ /  __/ |   ")
    print(" |_|  |_|\__,_|_| |_|_|_|  \___||___/\__| /_/   \_\_| |_|\__,_|_|\__, /___\___|_|   ")
    print("                                                                 |___/              ")
    print("                                                                                    ")
    init()
