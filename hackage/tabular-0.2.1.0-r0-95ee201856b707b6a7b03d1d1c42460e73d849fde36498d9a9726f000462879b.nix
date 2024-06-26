{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "tabular"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<E.Y.Kow@brighton.ac.uk>";
      author = "Eric Kow";
      homepage = "http://code.haskell.org/~kowey/tabular";
      url = "";
      synopsis = "Two-dimensional data tables with rendering functions";
      description = "Tabular provides a Haskell representation of two-dimensional\ndata tables, the kind that you might find in a spreadsheet or\nor a research report.  It also comes with some default\nrendering functions for turning those tables into ASCII art,\nCSV, HTML or LaTeX.\n\nBelow is an example of the kind of output this library produces.\nThe tabular package can group rows and columns, each group\nhaving one of three separators (no line, single line, double line)\nbetween its members.\n\n>     || memtest 1 | memtest 2 ||  time test  | time test 2\n> ====++===========+===========++=============+============\n> A 1 ||       hog |  terrible ||        slow |      slower\n> A 2 ||       pig |   not bad ||        fast |     slowest\n> ----++-----------+-----------++-------------+------------\n> B 1 ||      good |     awful || intolerable |    bearable\n> B 2 ||    better | no chance ||    crawling |     amazing\n> B 3 ||       meh |   well... ||  worst ever |          ok";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
        ];
        buildable = true;
      };
    };
  }