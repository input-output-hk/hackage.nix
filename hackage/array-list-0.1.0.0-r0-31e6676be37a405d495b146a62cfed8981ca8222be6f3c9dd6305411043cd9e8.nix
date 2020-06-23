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
      identifier = { name = "array-list"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Evgeny Poberezkin";
      maintainer = "evgeny@poberezkin.com";
      author = "Evgeny Poberezkin";
      homepage = "https://github.com/epoberezkin/array-list#readme";
      url = "";
      synopsis = "IsList instances of Array for OverloadedLists extension";
      description = "This package provides \"orphan\" instances 'IsList' for 'Array' data types\nwith `Integral` indices up to 5 dimensions to allow initializing\n'Array's from [nested] lists using 'OverloadedLists' GHC extension.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "array-list-doctest" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-driver-gen" or (errorHandler.buildDepError "doctest-driver-gen"))
            ];
          buildable = true;
          };
        "array-list-test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."array-list" or (errorHandler.buildDepError "array-list"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }