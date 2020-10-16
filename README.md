# Histvv data for Leipzig University

This repository hosts both the [XML data](./xml) and the
[static HTML and image resources](./public) for http://histvv.uni-leipzig.de.

These resources can be served by the
[histvv-server](https://github.com/ubleipzig/histvv) for which purpose a
[custom Stylesheet](./custom.xsl) is provided to adjust its basic HTML output.

## Docker

The histvv database and web application can be run locally from this repo with
a multi-container [Docker Compose](https://docs.docker.com/compose/) setup.

```bash
git clone https://github.com/ubleipzig/histvv-data
cd histvv-data
docker-compose build
docker-compose up
```

The web app can then be accessed at http://localhost:3003/.

To only start the BaseX database with the Leipzig HistVV data run

```bash
docker build -t histvv/db .
docker run -ti -p 1984:1984 -p 8984:8984 --name histvv-db-leipzig histvv/db
```

You can then access the [REST interface](https://docs.basex.org/wiki/REST) under
http://admin:admin@localhost:8984/rest/histvv.

## License

Copyright (C) 2018-2020 Leipzig University Library <info@ub.uni-leipzig.de>

The histvv database is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program.  If not, see <http://www.gnu.org/licenses/>.
