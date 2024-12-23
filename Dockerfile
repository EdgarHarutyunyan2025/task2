FROM python:latest 
WORKDIR /app
COPY ./5_Text_spelling_checker/* .
RUN pip install argparse && pip install pyspellchecker 
RUN ls -la && chmod +x run_script.sh
ENTRYPOINT ["/app/run_script.sh"]
