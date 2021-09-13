FROM python:3.8
COPY . /app
WORKDIR /app
RUN wget https://pjreddie.com/media/files/yolov3.weights -O weights/yolov3.weights 
RUN pip install -r requirements.txt
RUN python3 load_weights.py
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]