jenkins-deploy-script
=====================

Use in jenkins as end step of project building (after pulling changes from repository)

	/path/to/symlink.sh -w $WORKSPACE -a /path/to/symlink -b $BUILD_NUMBER

Example (with [jenkins environment variables](https://wiki.jenkins-ci.org/display/JENKINS/Building+a+software+project#Buildingasoftwareproject-JenkinsSetEnvironmentVariables)):

	./symlink.sh -w /var/lib/jenkins/jobs/jenkins-deploy-script/builds/37 -a /home/itnelo/jenkins-deploy-script -b 37
