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
      specVersion = "2.4";
      identifier = { name = "hs-conllu"; version = "0.1.5"; };
      license = "LGPL-3.0-only";
      copyright = "2021 bruno cuconato";
      maintainer = "bruno cuconato <bcclaro+haskell+hsconllu@gmail.com>";
      author = "bruno cuconato";
      homepage = "https://github.com/odanoburu/hs-conllu";
      url = "";
      synopsis = "Conllu validating parser and utils.";
      description = "utilities to parse, print, diff, and analyse data in CoNLL-U format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ];
        buildable = true;
        };
      exes = {
        "hs-conllu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."hs-conllu" or (errorHandler.buildDepError "hs-conllu"))
            ];
          buildable = true;
          };
        };
      };
    }