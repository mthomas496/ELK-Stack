## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Images/diagram_filename.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the 
Ansible file may be used to install only certain pieces of it, such as Filebeat.

ELK-Stack

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.

The configuration details of each machine may be found below.

| Name     | Function  | IP Address | Operating System |
|----------|-----------|------------|------------------|
| Jump Box | Gateway   | 10.0.0.4   | Linux            |
| Web-1    | Websever  | 10.0.0.5   | Linux            |
| Web-2    | Websever  | 10.0.0.6   | Linux            |
| ELK      | Monitoring| 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
<Home_Network_IP>

Machines within the network can only be accessed by Jump Box.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | <Home_Network_IP>    |
| Web-1    | No                  | 10.0.0.4             |
| Web-2    | No                  | 10.0.0.4             |
| ELK      | No                  | 10.0.0.4             |
### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it was simple to do and prevented any easily overlooked vulnerabilities.

The playbook implements the following tasks:
- . Install docker.io
- . Install python3-pip
- . Install docker via pip
- . Increase virtual memory
- . Use more memory
- . Enable service docker on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Images/docker_ps_output.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
| Name  | IP Address |
|-------|------------|
| Web-1 | 10.0.0.5   |
| Web-2 | 10.0.0.6   |

We have installed the following Beats on these machines:
- . Filebeat
- . Metricbeat

These Beats allow us to collect the following information from each machine:
- . Filebeat forwards and centralizes log data. This information is forwarded to Elasticsearch/	Logstash thus providing a GUI to simplify monitoring.
- . Metricbeat collects metrics and statistics and shows them in the output specified, for example Elasticsearch or Logstash.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to Ansible directory.
- Update the host file to include web-servers and elk
- Run the playbook, and navigate to http:<ELK-Public_IP>:5601/app/kibana to check that the installation worked as expected.
