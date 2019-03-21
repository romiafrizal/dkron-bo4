# Manual dkron-bo4

runing with 1 server and 3 agents stanby:
```
docker-compose up -d --scale dkron-agent=3
```

### Role variabel:
- server
- agent

### Role use example

- EXECUTE by SERVER 
 ```
   "tags": {
        "role": "server"    
    },  
```
- EXECUTE by ALL AGENTS (parallel jobs)
 ```
    "tags": {
        "role": "agent"
    },
```
- EXECUTE by 1 AGENT Only (auto distributed)
```
    "tags": {
        "role": "agent:1"
    },
````
- EXECUTE by 2 AGENTS (parallel jobs)
```
    "tags": {
        "role": "agent:2"
    },
```

---
**Distributed jobs**
![jobs](https://i.imgur.com/dsRuvpL.png)
