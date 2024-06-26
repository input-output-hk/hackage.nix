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
      specVersion = "1.4";
      identifier = { name = "mathgenealogy"; version = "0.0.2"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2010-2012 Peter Robinson";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson";
      homepage = "";
      url = "";
      synopsis = "Discover your (academic) ancestors!";
      description = "A command line program for extracting data from the\nMathematics Genealogy Project (<http://genealogy.math.ndsu.nodak.edu/index.php>).\n\nFor example, if Carl Gauss wanted to explore his academic ancestors, he\nwould type\n\n> mathgenealogy http://genealogy.math.ndsu.nodak.edu/id.php?id=18231\n\nwhich will produce a directed acyclic graph in output.pdf\n(<http://dl.dropbox.com/u/22490968/genealogy_of_gauss.pdf>). See\n\n> mathgenealogy --help\n\nfor details. Requires GraphViz to run.\n\n/Changes in 0.0.2:/\n\n* fixed bug regarding trailing commas (thanks to A. Koessler)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mathgenealogy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
          buildable = true;
        };
      };
    };
  }