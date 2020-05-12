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
      specVersion = "1.10";
      identifier = { name = "diagrams-pandoc"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Daniel Bergey";
      homepage = "";
      url = "";
      synopsis = "A pandoc filter to express diagrams inline using the haskell EDSL _diagrams_";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "diagrams-pandoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }