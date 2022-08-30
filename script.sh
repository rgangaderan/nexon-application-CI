#!/bin/bash
export version=1.0
sed -i s/{{version}}/$version/g /usr/local/apache2/htdocs/
