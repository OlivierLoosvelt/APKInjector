#! python2
from bs4 import BeautifulSoup as Soup
from time import sleep
import sys


file = open(sys.argv[1])
page = file.read()
soup = Soup(page, "xml")

def findPackage():
    manifest = soup.find_all('activity')
    main_activity = manifest[0]['android:name']
    checkMain(main_activity)

def checkMain(activity):
    str_len = len(activity.split('.'))
    if str_len <= 2:
        addPackage(activity)
    else:
        print('Main Activity: ' + changeToFolder(activity))

def addPackage(name):
    manifest = soup.find_all('manifest')
    print('Predicted main: '+ changeToFolder(manifest[0]['package'] + name))

def changeToFolder(string):
    return string.replace('.', '/')

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
    findPackage()
