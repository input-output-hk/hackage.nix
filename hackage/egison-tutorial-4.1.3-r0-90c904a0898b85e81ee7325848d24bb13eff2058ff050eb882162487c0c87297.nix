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
      specVersion = "2.0";
      identifier = { name = "egison-tutorial"; version = "4.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Satoshi Egi <egi@egison.org>";
      author = "Satoshi Egi";
      homepage = "http://www.egison.org";
      url = "";
      synopsis = "A tutorial program for the Egison programming language";
      description = "A tutorial program for the Egison programming language.\nEgison is the programming langugage that realized non-linear pattern-matching against unfree data types.\nWith Egison, we can represent pattern-matching with unfree data types intuitively, especially for collection data, such as lists, multisets, sets.\nPlease try Egison with this tutorial program!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "egison-tutorial" = {
          depends = [
            (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
          buildable = true;
        };
      };
    };
  }