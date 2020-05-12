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
      identifier = { name = "each"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) dramforever <dramforever@live.com>";
      maintainer = "dramforever@live.com";
      author = "dramforever";
      homepage = "https://github.com/dramforever/each#readme";
      url = "";
      synopsis = "Template Haskell library for writing monadic expressions more easily";
      description = "See README at the bottom.\n\n/Getting started/: See \"Each\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      tests = {
        "each-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."each" or (errorHandler.buildDepError "each"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }