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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "audacity"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://code.haskell.org/~thielema/audacity";
      url = "";
      synopsis = "Interchange with the Audacity sound signal editor";
      description = "This package provides functions\nfor interchange with the Audacity sound signal editor.\nCurrently we support import and export of label tracks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "sox-concat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."audacity" or (errorHandler.buildDepError "audacity"))
            (hsPkgs."soxlib" or (errorHandler.buildDepError "soxlib"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }