#!/bin/bash
source version.sh
sed -i s/{{version}}/$version/g /usr/local/apache2/htdocs/
