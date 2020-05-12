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
      identifier = { name = "mathgenealogy"; version = "0.0.1"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2010-2012 Peter Robinson";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson";
      homepage = "";
      url = "";
      synopsis = "Discover your (academic) ancestors!";
      description = "A command line program for extracting data from the\nMathematics Genealogy Project (<http://genealogy.math.ndsu.nodak.edu/index.php>).\n\nFor example, if Carl Gauss wanted to explore his academic ancestors, he\nwould type\n\n> mathgenealogy http://genealogy.math.ndsu.nodak.edu/id.php?id=18231\n\nwhich will produce a directed acyclic graph in output.pdf. See\n\n> mathgenealogy --help\n\nfor details. Requires GraphViz to run.";
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