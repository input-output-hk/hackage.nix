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
      identifier = { name = "typalyze"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mrd@debian.org";
      author = "Matthew Danish <mrd@debian.org>";
      homepage = "http://www.decidable.org/haskell/typalyze";
      url = "";
      synopsis = "Analyzes Haskell source files and dumps info in parsable format";
      description = "A tool to assist developers of IDEs and other code analyzing\nprograms.  Processes Haskell source files and outputs\ninformation about types in an efficient machine-readable\nformat.";
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