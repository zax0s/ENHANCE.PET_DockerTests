FROM python:3.10.12-slim-buster

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

RUN groupadd -r user && useradd -m --no-log-init -r -g user user

RUN python -m pip install --user -U pip && python -m pip install --user pip-tools
RUN python -m pip install torch torchvision torchaudio

RUN python -m pip install orcaz

COPY --chown=user:user moose_test_directory moose_test_directory
COPY --chown=user:user orca_test_directory orca_test_directory

CMD ["/bin/bash"]
