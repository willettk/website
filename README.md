My personal webpage, built with [Hyde](http://hyde.github.io/).

See the rendered version at http://homepages.spa.umn.edu/~willett/

Adapted from work by [Jake VanderPlas](https://github.com/jakevdp/website).

Building
========
Requires hyde:

    pip install hyde

Also pdflatex (for CV to be auto-generated)

Generate version for local development:

    make gen

Preview local version
(this is previewable in the browser at localhost:8080 -- kill with ctrl-C)

    make serve

Generate site for production:

    make gen-production

Publish site via SSH (SSH publisher requires hyde version > 0.8.6):

    make publish

License
=======
This work is under a [BSD 2-clause license](http://opensource.org/licenses/BSD-2-Clause)

