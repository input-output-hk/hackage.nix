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
      identifier = { name = "hspec-discover-discover"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/hspec-discover-discover#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-discover-discover#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "hspec-discover-discover-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-discover-discover" or (errorHandler.buildDepError "hspec-discover-discover"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hspec-discover-discover-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec-discover-discover" or (errorHandler.buildDepError "hspec-discover-discover"))
          ];
          buildable = true;
        };
      };
    };
  }