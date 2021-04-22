# ready-in-a-jiffy
Quick and easy environment setup 

## Redis

1. To get set, go:   
    $cd to the directory - 'db-redis' and use the three shell scripts 

    ~~~sh
    # To build and run the containers 
    # @db-redis
    
    $ ./up.sh
      - Do you wish to build the image? (y/n)? y
      - Do you wish create network? (y/n)?  y
    # To stop the containers
    $ ./down.sh
    # To get a redis-cli prompt
    $ ./redis-cli.sh
      $ 127.0.0.1:6379> AUTH default <password>
    ... 
    ~~~
