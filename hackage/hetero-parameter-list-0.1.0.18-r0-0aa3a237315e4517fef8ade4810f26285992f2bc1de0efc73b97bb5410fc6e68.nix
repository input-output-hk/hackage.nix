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
      specVersion = "1.12";
      identifier = { name = "hetero-parameter-list"; version = "0.1.0.18"; };
      license = "BSD-3-Clause";
      copyright = "2023 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/hetero-parameter-list#readme";
      url = "";
      synopsis = "hetero list with parameter list";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/hetero-parameter-list#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "try-hetero-parameter-list-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."try-hetero-parameter-list" or (errorHandler.buildDepError "try-hetero-parameter-list"))
          ];
          buildable = true;
        };
      };
    };
  }