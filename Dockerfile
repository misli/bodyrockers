ARG LEPRIKON_TAG=latest
FROM leprikon/leprikon:$LEPRIKON_TAG

MAINTAINER Jakub Dorňák <jakub.dornak@misli.com>

# copy files
COPY static /app/static
COPY templates /app/templates

# run this command at the end of any dockerfile based on this one
RUN leprikon collectstatic --no-input
