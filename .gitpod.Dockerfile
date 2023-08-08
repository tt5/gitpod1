FROM gitpod/workspace-full:latest

RUN sudo install-packages \
	tmux

RUN curl -sL https://civo.com/get | sh