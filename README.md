# Set a Jenkins server with plugin CasC via docker-compose

  ![Project-Phase2!](Images/Phase2/project-phase-2.jpg)

1. Launch an EC2 instance for Docker server
   
   With internet access

   Security Group with Port '8080' open for internet
   ![Security-group!](Images/Phase2/docker-server-security-group.jpg)

2. Connect to the Docker server(Amazon Linux ec2 machine) via putty

    ![connect-to-docker-server!](Images/Phase2/connect-to-docker-server.jpg)

3. Chnage hostname of the ec2 machine to docker-server
    - sudo su -
    - hostname docker-server
    - sudo su -

    ![change-hostname!](Images/Phase2/change-hostname.jpg)
    
4. Install docker on EC2 instance
    - yum install docker -y

    ![install-docker!](Images/Phase2/install-docker.jpg)

    - docker --version

    ![docker-version!](Images/Phase2/docker-version.jpg)

5. Start docker services
    - service docker start
    - service docker status

    ![service-docker-start!](Images/Phase2/service-docker-start.jpg)

6. Create a user called dockeradmin
    - useradd dockeradmin
    - passwd dockeradmin

    ![create-a-user!](Images/Phase2/create-a-user.jpg)

7. Add a user to docker group to manage docker
    - usermod -aG docker dockeradmin

    ![add-user-to-docker-group!](Images/Phase2/add-user-to-docker-group.jpg)

8. Write the Dockerfile file under /home/dockeradmin
    - cd /home
    - ls
    - cd dockeradmin


    ![cd-home-dockeradmin!](Images/Phase2/cd-home-dockeradmin.jpg)

9. Create a Dockerfile file
    - sudo nano Dockerfile
    ```
        # Pull tomcat image
        FROM tomcat:8.0

        # Copy webapp.war to tomcat
        COPY ./webapp.war /usr/local//tomcat/webapps
        
    ```
    ![create-dockerfile!](Images/Phase2/create-dockerfile.jpg)

