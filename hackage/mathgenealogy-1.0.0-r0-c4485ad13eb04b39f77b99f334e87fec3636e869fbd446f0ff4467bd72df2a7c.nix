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
      identifier = { name = "mathgenealogy"; version = "1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2010-2012 Peter Robinson";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson";
      homepage = "";
      url = "";
      synopsis = "Discover your (academic) ancestors!";
      description = "A command line program for extracting data from the\nMathematics Genealogy Project (<http://genealogy.math.ndsu.nodak.edu/index.php>).\n\nFind your entry at <http://genealogy.math.ndsu.nodak.edu/index.php> and\nthen use the URL as argument to mathgenealogy.\nFor example, if Carl Gauss wanted to explore his academic ancestors, he\nwould type\n\n> mathgenealogy http://genealogy.math.ndsu.nodak.edu/id.php?id=18231\n\nwhich produces the directed acyclic graph\n<http://dl.dropbox.com/u/22490968/genealogy_of_gauss.png>. See\n\n> mathgenealogy --help\n\nfor details. Requires GraphViz to run.\n\n/Changes in 1.0.0:/\n* updated for GHC 7.6.1\n* choice between PDF and PNG output\n* optional inclusion of PhD theses in output\n/Changes in 0.1.0:/\n\n* fixed bug regarding trailing commas (thanks to A. Koessler)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mathgenealogy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
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