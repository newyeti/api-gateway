build-image:
	mvn -s ${M2_HOME} clean compile jib:dockerBuild

#Build image and push to registry
build:
	mvn -s ${M2_HOME} clean compile jib:build

##
##
##
build-image-local:
	mvn clean compile jib:dockerBuild

#Build image and push to registry
build-local:
	mvn clean compile jib:build