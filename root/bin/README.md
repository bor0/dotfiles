Boro's Various CLI utilities
============================

Prerequisites
-------------
1. Need to have `DEV_BASE` configured for some of these to work.
2. Need to have `$HOME/.mysql_init` for the initialization commands.

Example configuration
---------------------
In `.bash_profile`:
```
export DEV_BASE=$HOME/dev/www
```
In `.mysql_init`:
```
ALTER USER 'root'@'localhost' IDENTIFIED BY 'asdf';
```

List of utilities
-----------------
| Utility name | Purpose                                                                    | Usage example |
|--------------|----------------------------------------------------------------------------|---------------|
| branchdiff   | Shows difference in branches between two repositories                      | `branchdiff origin upstream` |
| devwatch     | Watch source folder for file changes and sync source folder to output one  | `devwatch ~/output/ ~/src` |
| portforward  | Forwards 0.0.0.0:src_port to dest_ip:dest_port                             | `portforward 1234 google.com 80` |
| ramfsmount   | Mounts `$DEV_BASE` to RAM (2GB), creates instance/db folders and inits db  | `ramfsmount`  |
| ramfsumount  | Umounts `$DEV_BASE`                                                        | `ramfsumount` |
| webdev       | Start apache, mysql, elastic, memcached (in order)                         | `webdev`      |
| webdevfs     | Runs `ramfsmount && webdev`                                                | `webdevfs`    |
| webdevfsstop | Runs `webdevstop && ramfsumount`                                           | `webdevfsstop`|
| webdevstatus | Runs ps auxw on services started by `webdev`                               | `webdevstatus`|
| webdevstop   | Stops memcached, elastic, mysql, apache (in order)                         | `webdevstop`  |
