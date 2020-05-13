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
      identifier = { name = "single-tuple"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Kazuki Okamoto";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/kakkun61/tuple#readme";
      url = "";
      synopsis = "a class for single tuple implementations";
      description = "a class for single tuple implementations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            ];
          buildable = true;
          };
        };
      };
    }