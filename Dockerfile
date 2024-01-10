FROM python:3.9.18-slim-bullseye
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt 
COPY . .
ENV FLAKS_RUN_HOST=0.0.0.0      
EXPOSE 5000
CMD [ "flask", "run" ]