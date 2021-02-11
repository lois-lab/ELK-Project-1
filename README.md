# ELK-Project-1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Cloud Network](https://app.diagrams.net/#G1XQWltDxsKU2-mqi5mcDE2pz7OFoOAHqS)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.

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

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics and statistics.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    | Website    | 10.0.0.5   | Linux            |
| Web-2    | Website    | 10.0.0.7   | Linux            |
| Web-3    | Website     | 10.0.0.8   | Linux            |
| ELK-VM   | Monitor Websites | 10.1.0.4 | Linux           |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _104.40.4.228_

Machines within the network can only be accessed by JumpBox.
- _104.40.4.228_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes              | Any (Port 80)    |
| Web-1        |  No                   |   104.40.4.228         |
| Web-2         |    No                 |   104.40.4.228             |
| Web-3   | No     | 104.40.4.228  |
| Elk-VM  | Yes  | Any(Port 5601) |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because one does not need to spend time building a whole new virtual machine.

The playbook implements the following tasks:
- _Set vm.max_map_count to 262144._
- _Install Docker._
- _Download and Launch elk container._
- _Enable docker service on boot._

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Elk](Diagram/Elk_Cont.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _10.0.0.5_
- _10.0.0.7_
- _10.0.0.8_

We have installed the following Beats on these machines:
- _Filebeat_
- _Metricbeat_

These Beats allow us to collect the following information from each machine:
- _Filebeat monitor logs which we use to monitor logins and traffic into network and Metricbeat is used to monitor operating system, which can be used to track CPU avaliability and determine if there is a DoS attack._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the YAML file to role directory in the ansible directory under in _/etc_.
- Update the Host file to include the private IP address of your VM under the name of your hosts. If running a Elk server, put IP address of server under [Elk].
- Run the playbook, and navigate to the public IP address of your Elk VM to check that the installation worked as expected.

