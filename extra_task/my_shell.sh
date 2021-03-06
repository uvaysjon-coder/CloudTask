sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
echo "
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Uvaysjon Kholboev</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style>
    h1 {
        text-align: center;
    }
    
    pre {
        text-align: left;
    }
</style>

<body>
    <h1>Hello World from  $(hostname -f)!</h1>
        <pre>   

[ec2-user@ip-172-31-34-190 ~]$ uname -a
Linux ip-172-31-34-190.eu-central-1.compute.internal 5.10.118-111.515.amzn2.x86_64 #1 SMP Wed May 25 22:12:19 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux

[ec2-user@ip-172-31-34-190 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
devtmpfs        474M     0  474M   0% /dev
tmpfs           483M     0  483M   0% /dev/shm
tmpfs           483M  464K  483M   1% /run
tmpfs           483M     0  483M   0% /sys/fs/cgroup
/dev/xvda1       13G  1.6G   12G  12% /
tmpfs            97M     0   97M   0% /run/user/1000
tmpfs            97M     0   97M   0% /run/user/0

[ec2-user@ip-172-31-34-190 ~]$ free -h
              total        used        free      shared  buff/cache   available
Mem:           965M         88M        346M        464K        530M        744M
Swap:            0B          0B          0B

[ec2-user@ip-172-31-34-190 ~]$ ps -aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.1  0.5 123608  5564 ?        Ss   13:41   0:02 /usr/lib/systemd/systemd --switched-root --s
root         2  0.0  0.0      0     0 ?        S    13:41   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        I<   13:41   0:00 [rcu_gp]
root         4  0.0  0.0      0     0 ?        I<   13:41   0:00 [rcu_par_gp]
root         6  0.0  0.0      0     0 ?        I<   13:41   0:00 [kworker/0:0H-ev]
root         9  0.0  0.0      0     0 ?        I<   13:41   0:00 [mm_percpu_wq]
root        10  0.0  0.0      0     0 ?        S    13:41   0:00 [rcu_tasks_rude_]
root        11  0.0  0.0      0     0 ?        S    13:41   0:00 [rcu_tasks_trace]
root        12  0.0  0.0      0     0 ?        S    13:41   0:00 [ksoftirqd/0]
root        13  0.0  0.0      0     0 ?        I    13:41   0:00 [rcu_sched]
root        14  0.0  0.0      0     0 ?        S    13:41   0:00 [migration/0]
root        15  0.0  0.0      0     0 ?        S    13:41   0:00 [cpuhp/0]
root        17  0.0  0.0      0     0 ?        S    13:41   0:00 [kdevtmpfs]
root        18  0.0  0.0      0     0 ?        I<   13:41   0:00 [netns]
root        19  0.0  0.0      0     0 ?        I    13:41   0:00 [kworker/u30:1-e]
root        21  0.0  0.0      0     0 ?        S    13:41   0:00 [kauditd]
root       261  0.0  0.0      0     0 ?        S    13:41   0:00 [khungtaskd]
root       262  0.0  0.0      0     0 ?        S    13:41   0:00 [oom_reaper]
root       263  0.0  0.0      0     0 ?        I<   13:41   0:00 [writeback]
root       265  0.0  0.0      0     0 ?        S    13:41   0:00 [kcompactd0]
root       266  0.0  0.0      0     0 ?        SN   13:41   0:00 [ksmd]
root       267  0.0  0.0      0     0 ?        SN   13:41   0:00 [khugepaged]
root       322  0.0  0.0      0     0 ?        I<   13:41   0:00 [kintegrityd]
root       324  0.0  0.0      0     0 ?        I<   13:41   0:00 [kblockd]
root       325  0.0  0.0      0     0 ?        I<   13:41   0:00 [blkcg_punt_bio]
root       677  0.0  0.0      0     0 ?        S    13:41   0:00 [xen-balloon]
root       683  0.0  0.0      0     0 ?        I<   13:41   0:00 [tpm_dev_wq]
root       689  0.0  0.0      0     0 ?        I<   13:41   0:00 [md]
root       692  0.0  0.0      0     0 ?        I<   13:41   0:00 [edac-poller]
root       697  0.0  0.0      0     0 ?        S    13:41   0:00 [watchdogd]
root       795  0.0  0.0      0     0 ?        I<   13:41   0:00 [kworker/0:1H-kb]
root       847  0.0  0.0      0     0 ?        S    13:41   0:00 [kswapd0]
root       849  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfsalloc]
root       850  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs_mru_cache]
root       853  0.0  0.0      0     0 ?        I<   13:41   0:00 [kthrotld]
root       864  0.0  0.0      0     0 ?        S    13:41   0:00 [xenbus]
root       865  0.0  0.0      0     0 ?        S    13:41   0:00 [xenwatch]
root       901  0.0  0.0      0     0 ?        I<   13:41   0:00 [nvme-wq]
root       903  0.0  0.0      0     0 ?        I<   13:41   0:00 [nvme-reset-wq]
root       905  0.0  0.0      0     0 ?        I<   13:41   0:00 [nvme-delete-wq]
root       926  0.0  0.0      0     0 ?        I    13:41   0:00 [kworker/u30:2-x]
root       939  0.0  0.0      0     0 ?        I<   13:41   0:00 [ipv6_addrconf]
root       948  0.0  0.0      0     0 ?        I<   13:41   0:00 [kstrp]
root       957  0.0  0.0      0     0 ?        I<   13:41   0:00 [zswap-shrink]
root       964  0.0  0.0      0     0 ?        I<   13:41   0:00 [kworker/u31:0]
root      1644  0.0  0.0      0     0 ?        I<   13:41   0:00 [ata_sff]
root      1657  0.0  0.0      0     0 ?        S    13:41   0:00 [scsi_eh_0]
root      1658  0.0  0.0      0     0 ?        I<   13:41   0:00 [scsi_tmf_0]
root      1662  0.0  0.0      0     0 ?        S    13:41   0:00 [scsi_eh_1]
root      1663  0.0  0.0      0     0 ?        I<   13:41   0:00 [scsi_tmf_1]
root      1674  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs-buf/xvda1]
root      1675  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs-conv/xvda1]
root      1676  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs-cil/xvda1]
root      1677  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs-reclaim/xvd]
root      1678  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs-eofblocks/x]
root      1679  0.0  0.0      0     0 ?        I<   13:41   0:00 [xfs-log/xvda1]
root      1680  0.0  0.0      0     0 ?        S    13:41   0:00 [xfsaild/xvda1]
root      1739  0.0  0.6  39064  6420 ?        Ss   13:41   0:00 /usr/lib/systemd/systemd-journald
root      1756  0.0  0.2 116748  2144 ?        Ss   13:41   0:00 /usr/sbin/lvmetad -f
root      1767  0.0  0.0      0     0 ?        I<   13:41   0:00 [ena]
root      1773  0.0  0.3  46068  3660 ?        Ss   13:41   0:00 /usr/lib/systemd/systemd-udevd
root      2452  0.0  0.0      0     0 ?        I<   13:41   0:00 [cryptd]
root      2543  0.0  0.0      0     0 ?        I<   13:41   0:00 [rpciod]
root      2544  0.0  0.0      0     0 ?        I<   13:41   0:00 [xprtiod]
root      2547  0.0  0.2  59740  2100 ?        S<sl 13:41   0:00 /sbin/auditd
dbus      2578  0.0  0.4  58276  4068 ?        Ss   13:41   0:00 /usr/bin/dbus-daemon --system --address=syst
rpc       2581  0.0  0.3  67272  3328 ?        Ss   13:41   0:00 /sbin/rpcbind -w
root      2582  0.0  0.2 101596  2820 ?        Ssl  13:41   0:00 /usr/sbin/gssproxy -D
libstor+  2585  0.0  0.1  12624  1784 ?        Ss   13:41   0:00 /usr/bin/lsmd -d
chrony    2603  0.0  0.3 120320  3728 ?        S    13:41   0:00 /usr/sbin/chronyd
root      2605  0.0  0.2  28476  2920 ?        Ss   13:41   0:00 /usr/lib/systemd/systemd-logind
rngd      2608  0.0  0.4  94080  4668 ?        Ss   13:41   0:00 /sbin/rngd -f --fill-watermark=0 --exclude=j
root      2836  0.0  0.3  98664  3724 ?        Ss   13:41   0:00 /sbin/dhclient -q -lf /var/lib/dhclient/dhcl
root      2883  0.0  0.4  98664  4140 ?        Ss   13:41   0:00 /sbin/dhclient -6 -nw -lf /var/lib/dhclient/
root      3028  0.0  0.4  90344  4800 ?        Ss   13:41   0:00 /usr/libexec/postfix/master -w
postfix   3029  0.0  0.6  90432  6632 ?        S    13:41   0:00 pickup -l -t unix -u
postfix   3030  0.0  0.6  90508  6660 ?        S    13:41   0:00 qmgr -l -t unix -u
root      3110  0.0  0.4 216528  4484 ?        Ssl  13:41   0:00 /usr/sbin/rsyslogd -n
root      3115  0.0  1.7 716712 17564 ?        Ssl  13:41   0:00 /usr/bin/amazon-ssm-agent
root      3130  0.0  0.2  24684  2728 ?        Ss   13:41   0:00 /usr/sbin/crond -n
root      3137  0.0  0.2  27888  2216 ?        Ss   13:41   0:00 /usr/sbin/atd -f
root      3154  0.0  0.1 121304  1728 tty1     Ss+  13:41   0:00 /sbin/agetty --noclear tty1 linux
root      3155  0.0  0.1  10552  1732 ttyS0    Ss+  13:41   0:00 /sbin/agetty --keep-baud 115200,38400,9600 t
root      3283  0.0  3.3 730740 33140 ?        Sl   13:41   0:00 /usr/bin/ssm-agent-worker
root      3293  0.0  0.7 110832  7236 ?        Ss   13:41   0:00 /usr/sbin/sshd -D
root      3334  0.0  0.0   4264   108 ?        Ss   13:42   0:00 /usr/sbin/acpid
root      3381  0.0  0.0      0     0 ?        I    13:50   0:00 [kworker/0:2-cgr]
root      3383  0.0  0.8 150628  8608 ?        Ss   13:51   0:00 sshd: ec2-user [priv]
ec2-user  3417  0.0  0.4 150628  4472 ?        S    13:51   0:00 sshd: ec2-user@pts/0
ec2-user  3418  0.0  0.3 124732  3952 pts/0    Ss   13:51   0:00 -bash
root      3525  0.0  0.0      0     0 ?        I    13:56   0:00 [kworker/0:1-eve]
root      3550  0.0  0.0  19540   160 ?        Ss   14:01   0:00 /usr/sbin/anacron -s
ec2-user  3559  0.0  0.3 162312  3840 pts/0    R+   14:04   0:00 ps -aux
</pre>
</body>
</html>
" >> /var/www/html/index.html
chkconfig on