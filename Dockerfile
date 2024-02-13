FROM ollama/ollama:latest
RUN /bin/sh -c "/bin/ollama serve & sleep 1 && ollama pull llama2-uncensored"
ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]