#!/bin/sh

# some setup
BASE="git://github.com/aurelien-naldi"
PROJECTS="mddlib logicalmodel"

# get ready: switch to the right directory, remove old files
cd `dirname $0`
rm -rf apidocs
mkdir apidocs


for PROJECT in $PROJECTS
do
	echo "GENERATING: $PROJECT ..."
	PRJ="$PROJECT.git"

	# clone or update the main repository
	if [ -e $PRJ ] ; then
		cd $PRJ
		git pull origin
	else
		git clone "$BASE/$PRJ" "$PRJ"
		cd $PRJ
	fi

	# generate javadoc
	mvn clean
	mvn javadoc:javadoc
	cp -a target/site/apidocs ../apidocs/$PROJECT

	cd ..
done

