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
      identifier = { name = "mathgenealogy"; version = "1.2.0"; };
      license = "GPL-2.0-only";
      copyright = "(C) 2010-2013 Peter Robinson";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson";
      homepage = "";
      url = "";
      synopsis = "Discover your (academic) ancestors!";
      description = "A simple command line program for extracting data from the\nMathematics Genealogy Project (<http://genealogy.math.ndsu.nodak.edu/index.php>).\n\nLookup your entry at <http://genealogy.math.ndsu.nodak.edu/index.php> and\nthen use that URL as a command line argument.\nFor example, if Carl Gauss wanted to explore his academic ancestors, he\nwould type\n\n> mathgenealogy http://genealogy.math.ndsu.nodak.edu/id.php?id=18231\n\nwhich produces the directed acyclic graph\n<http://dl.dropbox.com/u/22490968/genealogy_of_gauss.png>. See\n\n> mathgenealogy --help\n\nfor more options. Requires GraphViz (in particular the /dot/ program) to run.\n\n/Changes in 1.2.0:/\n\n* Correct handling of entries with multiple PhDs (reported by Dima Pasechnik)\n\n/Changes in 1.1.1:/\n\n* Provide error message when given invalid start URL\n\n* Documentation and code cleanup\n\n/Changes in 1.0.0:/\n\n* Choice between PDF and PNG output\n\n* Optional inclusion of PhD theses in output\n\n/Changes in 0.0.2:/\n\n* Fixed bug regarding trailing commas (reported by Alexander Koessler)";
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
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }