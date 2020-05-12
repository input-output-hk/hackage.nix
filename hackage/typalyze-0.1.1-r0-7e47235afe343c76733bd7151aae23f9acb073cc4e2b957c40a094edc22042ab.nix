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
      specVersion = "0";
      identifier = { name = "typalyze"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mrd@debian.org";
      author = "Matthew Danish <mrd@debian.org>";
      homepage = "http://www.decidable.org/haskell/typalyze";
      url = "";
      synopsis = "Analyzes Haskell source files for easy reference";
      description = "A tool to assist developers of IDEs and other code analyzing\nprograms.  Processes Haskell source files and outputs information\nabout types in an efficient machine-readable format.\nContains an Emacs mode and a program to update cached information in\nthe background.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "typalyze" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "hswatch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }