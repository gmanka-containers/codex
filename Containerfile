FROM quay.io/fedora/fedora-toolbox

RUN sudo dnf -y install npm fish
RUN sudo dnf clean all
RUN npm i -g @openai/codex
CMD ["codex"]

