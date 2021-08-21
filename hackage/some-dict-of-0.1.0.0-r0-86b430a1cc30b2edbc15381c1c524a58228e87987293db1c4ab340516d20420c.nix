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
      identifier = { name = "some-dict-of"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/some-dict-of#readme";
      url = "";
      synopsis = "Carry evidence of constraints around";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/some-dict-of#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          ];
        buildable = true;
        };
      tests = {
        "discover-instances-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."some-dict-of" or (errorHandler.buildDepError "some-dict-of"))
            ];
          buildable = true;
          };
        };
      };
    }