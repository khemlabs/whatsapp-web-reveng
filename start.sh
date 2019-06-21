#!/bin/bash

# DO NOT MODIFY

bold=`tput bold`
normal=`tput sgr0`

if [ -z "${DEV_MODE+x}" ] 
then
	printf "\n${bold}==> ********** PROD MODE **********${normal} \n"
	printf "\n${bold}==> RUN npm start... ${normal} \n"
	npm run dev
else
	printf "\n${bold}==> ********** DEV MODE **********${normal} \n"
	if [ -d "node_modules" ]; then
		printf "\n${bold}==> node dependencies already installed... ${normal} \n"
  else
		printf "\n${bold}==> RUN npm install... ${normal} \n"
		npm install
	fi
	printf "\n${bold}==> RUN npm start... ${normal} \n"
	npm run dev
fi
