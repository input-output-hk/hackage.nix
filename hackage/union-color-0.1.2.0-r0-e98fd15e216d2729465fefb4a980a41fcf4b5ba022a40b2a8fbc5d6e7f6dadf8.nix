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
      identifier = { name = "union-color"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo.pc@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/union-color#readme";
      url = "";
      synopsis = "Unify verious color formats";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/union-color#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "union-color-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."union-color" or (errorHandler.buildDepError "union-color"))
          ];
          buildable = true;
        };
      };
    };
  }