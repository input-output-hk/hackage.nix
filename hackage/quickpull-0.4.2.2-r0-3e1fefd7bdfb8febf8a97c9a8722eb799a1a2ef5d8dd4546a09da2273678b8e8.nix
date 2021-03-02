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
    flags = { build-test-gen = false; old-quick-check = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "quickpull"; version = "0.4.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman, omari@smileystation.com";
      homepage = "http://www.github.com/massysett/quickpull";
      url = "";
      synopsis = "Generate Main module with QuickCheck tests";
      description = "Reads a tree of modules and outputs a module to run all\nQuickCheck tests.\nFor more information, please see documentation in the\n\"Quickpull\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "quickpull" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "quickpull-test-gen" = {
          depends = [
            (hsPkgs."barecheck" or (errorHandler.buildDepError "barecheck"))
            ] ++ (pkgs.lib).optionals (flags.build-test-gen) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ]);
          buildable = if flags.build-test-gen then true else false;
          };
        };
      tests = {
        "quickpull-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }