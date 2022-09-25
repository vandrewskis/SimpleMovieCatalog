FROM perl:5.36.0

# RUN perl -MCPAN -e'install "LWP::Simple"'
RUN cpan install LWP::Simple
RUN cpan install LWP::Protocol::https

COPY . /usr/src/SimpleMovieCatalog
WORKDIR /usr/src/SimpleMovieCatalog
CMD ["perl", "./moviecat.pl", "-o", "/movies/report/movies", "/movies"]
