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
      identifier = { name = "hedgehog-checkers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "https://github.com/bitemyapp/hedgehog-checkers#readme";
      url = "";
      synopsis = "";
      description = "hedgehog-checkers wraps up the expected properties associated with various standard type classes as Hedgehog properties.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-checkers" or (errorHandler.buildDepError "hedgehog-checkers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            ];
          buildable = true;
          };
        };
      };
    }