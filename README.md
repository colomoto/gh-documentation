Documentation store
===================

This "fake" repository helps generating and hosting javadoc for mddlib and logical model projects.

**View the [javadoc for MDDlib](http://aurelien-naldi.github.com/gh-documentation/api/mddlib)**
**View the [javadoc for Logical Models](http://aurelien-naldi.github.com/gh-documentation/api/logicalmodel)**


WHAT, HOW, WHY
--------------

We want nice online javadoc for our java code!
Github serves web pages from the gh-pages branch, let's use it!
But adding generated files to a git repository sounds bad, even in a separate branch...

This small repository works around it by providing a simple script to generate javadoc from a list of real repositories.
The HTML output will be added to the gh-pages branch of this repository.

Note that this could be extended to other generated documentation later.


HOW TO USE IT
----------------

* Run run.sh to update the clone and generate the javadoc
    * clone or update the main repositories
    * Generates the javadoc and copy it to apidocs
* Check the output in apidocs
* Switch to the gh-pages branch
* Put the files in the right place, commit and push

