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
      specVersion = "3.4";
      identifier = { name = "reference-counting"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rodrigo.m.mesquita@gmail.com";
      author = "Rodrigo Mesquita";
      homepage = "";
      url = "";
      synopsis = "A reference counting library to alias linear resources";
      description = "A reference counting library to alias linear resources.\nGet started by importing @'Data.Linear.Alias'@!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
          (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "reference-counting-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reference-counting" or (errorHandler.buildDepError "reference-counting"))
            (hsPkgs."linear-base" or (errorHandler.buildDepError "linear-base"))
          ];
          buildable = true;
        };
      };
    };
  }