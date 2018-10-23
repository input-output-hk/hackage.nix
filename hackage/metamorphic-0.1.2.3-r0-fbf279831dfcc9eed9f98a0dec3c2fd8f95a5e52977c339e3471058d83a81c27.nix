{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "metamorphic";
        version = "0.1.2.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Drew Day <drewday@gmail.com>";
      author = "Martin Erwig <erwig@cs.orst.edu>";
      homepage = "http://github.com/technogeeky/metamorphic";
      url = "";
      synopsis = "metamorphisms: ana . cata  or  understanding folds and unfolds";
      description = "Metamorphisms are an approach to structured recursion.\n\nThis package is currently a reorganization and slight adaptation of the original\ncode which was written more than a decade ago (in 1999); it is, however\nquite a direct and clever way to investigate the concepts involved.\n\nThe original code and paper can be found here:\n\n<http://web.engr.oregonstate.edu/~erwig/meta/>\n\nThis code uses unusual layout (in particular, I use very wide\ncolumns and lots of spacing) in hopes that it makes the symmetry\nof the functions manifest. Any mistakes in the code are almost surely\nmine, and not the original author's.\n\nFuture updates should include:\n\n* documentation\n\n* an abstract syntax graph version of the included functions\n\n* diagrams of involved structures\n\n* examples demonstrated by doctest\n\n* switch to hierarchical naming\n\n* switch to available versions of components (SimpleMap, Heap)\n\n* a more general license";
      buildType = "Simple";
    };
    components = {
      "metamorphic" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }