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
      identifier = { name = "mergeless-persistent"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018-2020 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/mergeless#readme";
      url = "";
      synopsis = "Support for using mergeless from persistent-based databases";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mergeless" or (errorHandler.buildDepError "mergeless"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
        ];
        buildable = true;
      };
      tests = {
        "mergeless-persistent-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-mergeless" or (errorHandler.buildDepError "genvalidity-mergeless"))
            (hsPkgs."genvalidity-persistent" or (errorHandler.buildDepError "genvalidity-persistent"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mergeless" or (errorHandler.buildDepError "mergeless"))
            (hsPkgs."mergeless-persistent" or (errorHandler.buildDepError "mergeless-persistent"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          ];
          buildable = true;
        };
      };
    };
  }