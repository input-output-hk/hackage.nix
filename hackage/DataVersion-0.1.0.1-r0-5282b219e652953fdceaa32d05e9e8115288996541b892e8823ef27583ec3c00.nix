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
      identifier = { name = "DataVersion"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2019 Sandy Maguire, James King";
      maintainer = "james@agentultra.com";
      author = "Sandy Maguire, James King";
      homepage = "https://github.com/agentultra/DataVersion#readme";
      url = "";
      synopsis = "Type safe data migrations";
      description = "Please see the README on GitHub at <https://github.com/agentultra/DataVersion#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          ];
        buildable = true;
        };
      tests = {
        "DataVersion-test" = {
          depends = [
            (hsPkgs."DataVersion" or (errorHandler.buildDepError "DataVersion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }