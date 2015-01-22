FROM euskadi31/gentoo:latest

MAINTAINER Axel Etcheverry <axel@etcheverry.biz>

RUN mkdir -p /usr/portage/{distfiles,metadata,packages}
RUN chown -R portage:portage /usr/portage
RUN echo "masters = gentoo" > /usr/portage/metadata/layout.conf
RUN emerge-webrsync
RUN eselect news read new
