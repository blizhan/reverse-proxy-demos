import uvicorn

if __name__ == "__main__":
    uvicorn.run("your_package:app", host="0.0.0.0", port=8000, reload=True,root_path='/fastapi_service')
