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
      identifier = { name = "semiring-num"; version = "0.5.3.1"; };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/semiring-num";
      url = "";
      synopsis = "Basic semiring class and instances";
      description = "Adds a basic semiring class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "semiring-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semiring-num" or (errorHandler.buildDepError "semiring-num"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }