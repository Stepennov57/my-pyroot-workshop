FROM rootproject/root:6.28.00

# Install Jupyter
RUN apt update && \
    apt install -y python3-pip && \
    pip3 install notebook ipykernel matplotlib

# Use ROOT's Python
ENV PYTHONPATH /usr/local/lib/root

# Start in a working directory
WORKDIR /home/root
