# Ultroid - UserBot
# Copyright (C) 2021 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM programmingerror/ultroid:b0.1

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# clone the repo and change workdir
COPY . .
RUN sh run.sh
WORKDIR /root/TeamUltroid/

# install main requirements.
RUN pip3 install --no-cache-dir -r requirements.txt

# install addons requirements
RUN wget https://git.io/JWdOk -O addons.txt
RUN pip3 install --no-cache-dir -r addons.txt
