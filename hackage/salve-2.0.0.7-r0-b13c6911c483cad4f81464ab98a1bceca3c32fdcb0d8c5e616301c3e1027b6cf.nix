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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "salve"; version = "2.0.0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Semantic version numbers and constraints.";
      description = "Salve provides semantic version (SemVer) numbers and constraints (ranges).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "salve-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."salve" or (errorHandler.buildDepError "salve"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }