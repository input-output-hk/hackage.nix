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
      identifier = { name = "usa-holidays"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Kyung Mo Kweon";
      maintainer = "kkweon@gmail.com";
      author = "Kyung Mo Kweon";
      homepage = "https://github.com/kkweon/usa-holidays#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/kkweon/usa-holidays#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "usa-holidays-dodctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."usa-holidays" or (errorHandler.buildDepError "usa-holidays"))
            ];
          buildable = true;
          };
        "usa-holidays-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."usa-holidays" or (errorHandler.buildDepError "usa-holidays"))
            ];
          buildable = true;
          };
        };
      };
    }