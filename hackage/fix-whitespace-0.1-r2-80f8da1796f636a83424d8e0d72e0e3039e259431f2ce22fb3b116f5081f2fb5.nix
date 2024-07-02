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
      specVersion = "2.2";
      identifier = { name = "fix-whitespace"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andreas Abel, Liang-Ting Chen <liang.ting.chen.tw@gmail.com>";
      author = "fix-whitespace was originally written by Nils Anders Danielsson as part of Agda 2 with contributions from Ulf Norell, Andrés Sicard-Ramírez, Andreas Abel, Philipp Hausmann, Jesper Cockx, Vlad Semenov, Liang-Ting Chen, and Artem Pelenitsyn.";
      homepage = "https://github.com/agda/fix-whitespace";
      url = "";
      synopsis = "Fixes whitespace issues.";
      description = "Removes trailing whitespace, lines containing only whitespace, expands tabs,\nand ensures that every file ends in a newline character.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "fix-whitespace" = {
          depends = [
            (hsPkgs."fix-whitespace" or (errorHandler.buildDepError "fix-whitespace"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
      tests = {
        "QuickCheck" = {
          depends = [
            (hsPkgs."fix-whitespace" or (errorHandler.buildDepError "fix-whitespace"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "Golden" = {
          depends = [
            (hsPkgs."fix-whitespace" or (errorHandler.buildDepError "fix-whitespace"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          ];
          buildable = true;
        };
      };
    };
  }