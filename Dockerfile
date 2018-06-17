FROM python:3.6-apline

WORKDIR /app

# Install Dependencies
RUN cd /app && \
    pip install -r requirements.txt

# Add actual source code
ADD app.py /app

EXPOSE 5000

CMD ["python", "app.py", "--port", "5000"]
