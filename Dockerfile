FROM python:latest 
#COPY ./5_Text_spelling_checker/* .
COPY ./5_Text_spelling_checker .
WORKDIR 5_Text_spelling_checker
RUN pip install argparse && pip install pyspellchecker 
RUN chmod +x run_script.sh
ENTRYPOINT ["./run_script.sh"]
