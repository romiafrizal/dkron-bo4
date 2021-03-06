# Quick Guide dkron-bo4

for manual book please read dkron.io 

### Docker running with 1 server and 3 agents:
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


### Backup All Jobs

``` 
curl -X GET "http://localhost:8080/v1/jobs" -H "accept: application/json" -o all_jobs.json 
```
