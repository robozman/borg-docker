# Copyright 2021 Robby Zapmino
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from debian:buster

ADD ["https://github.com/borgbackup/borg/releases/download/1.1.15/borg-linux64", "/tmp"]

RUN mkdir -p /usr/local/bin

RUN mv /tmp/borg-linux64 /usr/local/bin/borg

RUN chmod +x /usr/local/bin/borg
