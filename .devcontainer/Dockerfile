FROM rubensa/ubuntu-tini-dev-chrome

# Create vscode-server extensionsCache directory so it is owned by the user
RUN mkdir -p /home/${USER_NAME}/.vscode-server/extensionsCache

# Create maven repository directory so it is owned by the user
RUN mkdir -p /home/${USER_NAME}/.m2/repository
