

# Object-detection-API

Binary classifer Api for classifing images of trucks and ships

## API Reference


#### Predict Category

```http
POST /image
```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `images`      | `file` | **Required**. Image to be predicted |

![image](https://user-images.githubusercontent.com/54744701/133132523-e3e3d959-17e2-4bbf-a71c-4ef47b561239.png)


```http
POST /detections
```
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `images`      | `file` | **Required**. Image to be predicted |

![image](https://user-images.githubusercontent.com/54744701/133132613-014646a2-6528-4ee9-85b6-358fb6ac89e2.png)


  
## Run Locally

Clone the project

```bash
git clone git@github.com:abhinav-TB/Object-detection-API.git
```

Go to the project directory

```
cd Object-detection-API
```
Install dependencies

```bash
pip install -r requirements.txt
```
Download and update weights
```
wget https://pjreddie.com/media/files/yolov3.weights -O weights/yolov3.weights
python load_weights.py
```

Start the app

```bash
python3 app.py
```
  
## Run Using Docker

    docker build -t object-detection-model .
    docker run object-detection-model

