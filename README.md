# dkron-bo4
dkron-bo4 repo


runing with 1 server and 3 agents stanby:
'sudo docker-compose up -d --scale dkron-agent=3'

ROLE variabel:
- server
- agent

# Role use example

- EXECUTE by SERVER 
    "tags": {
        "role": "server"
    }
    
- EXECUTE by ALL AGENT (parallel jobs)
    "tags": {
        "role": "agent"
    },
- EXECUTE by 1 AGENT Only (auto distributed)
    "tags": {
        "role": "agent:1"
    },

- EXECUTE by 2 AGENTS (parallel jobs)
    "tags": {
        "role": "agent:2"
    },

![jobs](https://i.imgur.com/dsRuvpL.png)
