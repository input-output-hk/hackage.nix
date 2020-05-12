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
      specVersion = "1.8";
      identifier = { name = "egison-tutorial"; version = "3.3.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Satoshi Egi <egi@egison.org>";
      author = "Satoshi Egi";
      homepage = "http://www.egison.org";
      url = "";
      synopsis = "A tutorial program for the programming language Egison";
      description = "A tutorial program for the programming language Egison.\nEgison is the programming langugage that realized non-linear pattern-matching with unfree data types.\nWith Egison, you can represent pattern-matching with unfree data types intuitively, especially for collection data, such as lists, multisets, sets.\nPlease learn Egison with this tutorial program!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "egison-tutorial" = {
          depends = [
            (hsPkgs."egison" or (errorHandler.buildDepError "egison"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."strict-io" or (errorHandler.buildDepError "strict-io"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }