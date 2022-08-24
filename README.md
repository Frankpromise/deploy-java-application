# README
Cowsay is a program that generates ASCII pictures of a cow with a message.
Cowsay sources are found in the "cowsay" sub directory.

Your mission:
(1) See some Dupak Chopra quotes in your browser:

(a) Read the cowsay readme

(b) Use bash in the standard "node" docker container to execute the server

(c) View in browser

(2) Create an immutable cowsay server:

(a) Write entry-point.sh that:

    - accepts the port as an argument
    
    - maintains 8080 as default, when no argument passed
    
    - executes the server
    
(b) Create a docker file that: 

    - uses node as the base image
    
    - installs all needed dependencies as required for execution
    
    - uses entry-point.sh to execute
    
(c) build the image

(d) execute on port 3001 INTERNALY and 4001 EXTERNALLY

(e) View in browser

(3) Use node-alpine as your base image
