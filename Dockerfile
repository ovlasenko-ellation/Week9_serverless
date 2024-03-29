FROM agrigorev/zoomcamp-bees-wasps:v2

RUN pip install keras-image-helper
RUN pip install https://github.com/alexeygrigorev/tflite-aws-lambda/raw/main/tflite/tflite_runtime-2.14.0-cp310-cp310-linux_x86_64.whl

COPY predict.py .
ENV MODEL_NAME=bees-wasps-v2.tflite
ENV LAMBDA_HANDLER=predict.lambda_handler

CMD [ "predict.lambda_handler" ]