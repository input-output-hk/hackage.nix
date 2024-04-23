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
      identifier = { name = "union-angle"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Yoshikuni Jujo";
      maintainer = "yoshikuni.jujo.pc@gmail.com";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/githubuser/union-angle#readme";
      url = "";
      synopsis = "Union type that include radian angle and degree angle";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/union-angle#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "union-angle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."union-angle" or (errorHandler.buildDepError "union-angle"))
          ];
          buildable = true;
        };
      };
    };
  }