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
      identifier = { name = "vformat-time"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2020 Version Cloud";
      maintainer = "jorah@version.cloud";
      author = "Jorah Gao";
      homepage = "https://github.com/versioncloud/vformat-time#readme";
      url = "";
      synopsis = "Extend vformat to time datatypes";
      description = "Please see http://hackage.haskell.org/package/vformat-time";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vformat" or (errorHandler.buildDepError "vformat"))
        ];
        buildable = true;
      };
      tests = {
        "vformat-time-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vformat" or (errorHandler.buildDepError "vformat"))
            (hsPkgs."vformat-time" or (errorHandler.buildDepError "vformat-time"))
          ];
          buildable = true;
        };
      };
    };
  }