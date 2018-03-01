FROM microsoft/dotnet

# Install procdump dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gdb \
        lldb

# Install procdump
RUN wget https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod/pool/main/p/procdump/procdump_1.0.1_amd64.deb \
    && dpkg -i procdump_1.0.1_amd64.deb \
    && rm procdump_1.0.1_amd64.deb