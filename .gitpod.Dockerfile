FROM gitpod/workspace-full:latest

RUN sudo install-packages \
	tmux

RUN wget https://github.com/civo/cli/releases/download/v1.0.61/civo-1.0.61-linux-amd64.tar.gz && \
    tar -xvf civo-1.0.61-linux-amd64.tar.gz && \
    chmod +x civo && \
    sudo mv ./civo /usr/local/bin/