FROM fabric8/jenkins-slave-dind

#Add startup script
ADD start-jenkins-slave.sh /usr/bin/start-jenkins-slave.sh

# Add the default images
ADD images /images

# Standard SSH port
EXPOSE 22

CMD ["start-jenkins-slave.sh"]
