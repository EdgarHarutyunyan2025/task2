FROM python:latest 
COPY ./5_Text_spelling_checker/* .
RUN pip install argparse && pip install pyspellchecker 
RUN chmod +x run_script.sh
RUN ls -la && ./run_script.sh -f text.txt -o corect.txt
#ENTRYPOINT ["./run_script.sh"]
