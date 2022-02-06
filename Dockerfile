FROM rubydata/datascience-notebook:latest

RUN gem install httparty -v ">= 0.20.0" && \
    gem install rover-df -v ">= 0.2.7" && \
    gem install vega -v ">= 0.2.6"

CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''"]