# SSH LOOP TEST
This is a ssh loop test, this is perfect test tool if you setup a application that need SSH communication between each other, like IBM Spectrum Scale.

## CONFIGURATION AND RUN
Open the shell script `ssh-test.sh` with your favorite editor like `vi/vim or nano`.

In the *SERVERS=('test1' 'test2' 'test3' 'test4')* section, replace the test1-4 with the FQDN, Hostname or IP Address to test SSH against.

When that is done, login as the user you want to test and run the script. `./ssh-test.sh`

```
user@server1:~# ./test.sh
[SUCCESS] Access from server1 to server1
Connection to server1 closed.
[SUCCESS] Access from server1 to server2
Connection to server2 closed.
Permission denied, please try again.
Permission denied, please try again.
user@server1: Permission denied (publickey,password).
************************************
[WARNING] server2 can not access server1
************************************
[SUCCESS] Access from server2 to server2
Connection to server2 closed.
```

For Succssful connection will you see `[SUCCESS] Access from XXXX to YYYY`

For unsuccessful test you will see
```
************************************
[WARNING] server2 can not access server1
************************************
```

## LIMITATION
This has only been tested on CentOS Servers.
It will guarantee *not* work on a Windows Host. AIX, Linux or any other UNIX based operating system it should work.
