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
      specVersion = "1.10";
      identifier = { name = "system-extra"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "arnaud.oqube@gmail.com";
      author = "Arnaud Bailly";
      homepage = "";
      url = "";
      synopsis = "A bunch of system utilities used by other projects";
      description = "This package provides various system-level utilities, mostly related to building packages\nwithin docker";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."system-extra" or (errorHandler.buildDepError "system-extra"))
          ];
          buildable = true;
        };
      };
    };
  }