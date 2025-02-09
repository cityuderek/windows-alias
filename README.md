# windows-alias

If you don't like memorizing commands and you are using Windows, this may help you.

There are some aliases for Windows.

Like aliases in Linux, I created some common aliases to simplify long commands.

# Setup

- Add [paths](#paths) to %PATH%, see ["Add paths to %PATH%"](#add-paths-to-path) for detail

- Restart Command Prompt

- Run "ll" to test

## Paths

```
D:\wwwroot\windows-alias\it
D:\wwwroot\windows-alias\aws
D:\wwwroot\windows-alias\docker
D:\wwwroot\windows-alias\nodejs
D:\wwwroot\windows-alias\php
```

## Add paths to %PATH%

Press the Start key on your keyboard.

Search for "Edit the system environment variables" and open it.

Click "Environment Variables".

In the Environment Variables window, under System variables(recommended) / User variables, find the variable named Path and select it.

Click the Edit button.

In the Edit Environment Variable window, click the New button

Enter path like "D:\wwwroot\windows-alias\aws" ...

## IT

| Command | Description    | Alias of |
| ------- | -------------- | -------- |
| ls      | List directory | dir      |
| ll      | List directory | dir      |

## Node.js

| Command | Description | Alias of          |
| ------- | ----------- | ----------------- |
| nrd     |             | npm run dev       |
| nrb     |             | npm run build     |
| nrs     |             | npm run start     |
| nrsd    |             | npm run start:dev |
| nrw     |             | npm run watch     |

## Docker

| Command   | Description                                              | Alias of                                                |
| --------- | -------------------------------------------------------- | ------------------------------------------------------- |
| dkr       |                                                          | docker                                                  |
| dkc       |                                                          | docker-compose                                          |
| dcu       |                                                          | docker-compose up                                       |
| dcd       |                                                          | docker-compose down                                     |
| dkrsh     | exec sh of a container                                   | docker exec -it \<container_id\> sh                     |
| dkrll     | list file in a container                                 | docker exec -it %1 ls -l %2                             |
| dkrcat    | cat file in a container                                  | docker exec -it %1 cat %2                               |
| dkrubuntu | run ubuntu container and map volume to current directory | docker run -it --rm -v .:/root/f -w /root/f ubuntu bash |

- dkrubuntu

Simply switch to ubuntu with same directory, so that you can you linux command easily.
Container will be removed after quit.
Default ubunbu working directory is /root/f

- dkrsh example

```
dkrsh 01171b1e09a6
```

Default shell is /bin/bash. Use the second parameter to controll shell

```
dkrsh 01171b1e09a6 sh
```

```
dkrsh 01171b1e09a6 bash
```

- dkrll example

```
dkrll 01171b1e09a6

```

```
dkrll 01171b1e09a6 /app
```

- dkcat example

```
dkrcat 01171b1e09a6 /app/.env
```

## AWS

| Command    | Description               | Alias of       |
| ---------- | ------------------------- | -------------- |
| awsprofile | To get or set AWS profile |                |
| s3         |                           | aws s3         |
| cloudwatch |                           | aws cloudwatch |

- awsprofile example

To get

```
awsprofile
```

To set profile

```
awsprofile profile1
```

- s3 example

```
s3 ls
```

## Python

| Command | Description | Alias of      |
| ------- | ----------- | ------------- |
| pip     |             | python -m pip |

## GIT

| Command | Description | Alias of |
| ------- | ----------- | -------- |
| gitpull |             | git pull |

- gitpull

switch branch and git pull

```
gitpull uat
```

## PHP

You need setup PHP setup path in php\*.bat first.

Prerequisite: PHP.

| Command   | Description                   | Alias of             |
| --------- | ----------------------------- | -------------------- |
| php72     | PHP 7.2                       | c:\php72\php         |
| php74     | PHP 7.4                       | c:\php74\php         |
| php81     | PHP 8.1                       | c:\php81\php         |
| php82     | PHP 8.2                       | c:\php82\php         |
| artisan72 | Laravel artisan using PHP 7.2 | c:\php72\php artisan |
| artisan74 | Laravel artisan using PHP 7.4 | c:\php74\php artisan |
| artisan81 | Laravel artisan using PHP 8.1 | c:\php81\php artisan |
| artisan82 | Laravel artisan using PHP 8.2 | c:\php82\php artisan |
| phpunit   | PHP Unit                      | ./vendor/bin/phpunit |

- php82 example

```
php82 -v
```

Output

```
PHP 8.2.10 (cli) (built: Aug 30 2023 09:46:43) (NTS Visual C++ 2019 x64)
Copyright (c) The PHP Group
Zend Engine v4.2.10, Copyright (c) Zend Technologies

```

- artisan82

```
artisan82 --version

```

Output

```
Laravel Framework 10.44.0
```

## Custom

Inside custom folder. You need to edit the path in the file before use.

| Command | Description | Alias of                                     |
| ------- | ----------- | -------------------------------------------- |
| mvn     | Maven       | "D:\software\apache-maven-3.3.9\bin\mvn" %\* |

## Other

Inside other folder.

### For PHP composer

You need to copy them to your Composer setup folder

| Command    | Description            | Alias of |
| ---------- | ---------------------- | -------- |
| composer72 | composer using PHP 7.2 |          |
| composer74 | composer using PHP 7.4 |          |
| composer82 | composer using PHP 8.2 |          |

```
copy other\composer\composer\*.bat C:\ProgramData\ComposerSetup\bin

```

composer example

```

composer82 --version

```

Output

```
Composer version 2.7.2 2024-03-11 17:12:18
PHP version 8.2.10 (C:\php82\php.exe)
Run the "diagnose" command to get more detailed diagnostics output.
```
