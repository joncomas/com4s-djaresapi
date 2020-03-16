FROM gitpod/workspace-full
# Install image generator
USER root

# I just removed the graphviz dependec to see what happens
RUN apt-get update && apt-get install -y libgraphviz-dev pkg-config python3-dev

ENV IP=0.0.0.0
ENV PORT=3000
ENV PIPENV_VENV_IN_PROJECT=true