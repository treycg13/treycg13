## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](https://github.com/treycg13/treycg13/blob/master/diagrams/diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

![Filebeat-playbook](https://github.com/treycg13/treycg13/blob/master/ansible/filebeat-playbook.yml)

![Metricbeat-playbook](https://github.com/treycg13/treycg13/blob/master/ansible/metricbeat-playbook.yml)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting inbound access to the network.
The load balancer ensures that work to process incoming traffic will be shared by both vulnerable web servers. Access controls will ensure that only authorized users — namely, ourselves — will be able to connect in the first place.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file system of the VMs on the network and system metrics.
Filebeat detects changes to the filesystem. Specifically, we use it to collect Apache logs.
Metricbeat detects changes in system metrics, such as CPU usage. We use it to detect SSH login attempts, failed sudo escalations, and CPU/RAM statistics.

The configuration details of each machine may be found below.


| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   |Ubuntu LTS 18.04  |
| Web-1    |Web Server| 10.0.0.5   |Ubuntu LTS 18.04  |
| Web-2    |Web Server| 10.0.0.6   |Ubuntu LTS 18.04  |
| Web-3    |Web Server| 10.0.0.7   |Ubuntu LTS 18.04  |
| ELK      |Monitoring| 10.1.0.4   |Ubuntu LTS 18.04  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
40.77.98.191

Machines within the network can only be accessed by the docker containers I created within my jumpbox. The personal IP address to access the ELK machine is:  

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because ansible is an automated tool that allows the user to configure provision, and manage application deployment on an infinite amount of machines. 


The playbook implements the following tasks:
- Installs docker.io  
- Installs pip3
- Installs python module
- Increases virtual memory 
- Download and launch a docker elk container 


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ELK-docker](https://github.com/treycg13/treycg13/blob/master/diagrams/ELK-running.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.5
- Web-2: 10.0.0.6
- Web-3:10.0.0.7
- ELK: 10.1.0.4

We have installed the following Beats on these machines:
- Filebeat 
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat: Filebeat detects changes to the filesystem. Specifically, we use it to collect Apache logs.
- Metricbeat: Metricbeat detects changes in system metrics, such as CPU usage. We use it to detect SSH login attempts, failed sudo escalations, and CPU/RAM statistics.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook file to /etc/ansible.
- Update the configuration file to include the ELK machine IP address and updated the hosts file to contain all the Webs IP address. 
- Run the playbook, and navigate to ELK to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
