# reverse-proxy-demos

!!! IN CONSTRUCTION

This repo show some demos of nginx-reverse-proxy usage to several popular http services. Demo projects include the following http services:

- [x] 1. streamlit
- [x] 2. jupyter
- [x] 3. fastapi
- [x] 4. thredds/tomcat
- [ ] 5. mongodb


## Usage
```
# expose serivces in url within the same port with different sub_url_path
http://{{host}}:{{port}}/{{service_path}}/


# In this example

## 1. streamlit:  http://localhost/streamlit_service/
## 2. jupyter: http://localhost/jupyter_service/
## 3. fastapi: http://localhost/fastapi_service/
## 4. thredds: http://localhost/thredds/
## 5. mongodb: http://localhost/mongodb/

```