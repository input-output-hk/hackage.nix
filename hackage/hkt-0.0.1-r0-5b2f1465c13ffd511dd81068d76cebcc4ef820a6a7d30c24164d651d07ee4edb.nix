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
    flags = { reduce-core-output = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hkt"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eliaslfox@gmail.com";
      author = "Elias Lawson-Fox";
      homepage = "https://github.com/eliaslfox/hkt#readme";
      url = "";
      synopsis = "A library for higher kinded types.";
      description = "A library for building and manipulating higher kinded data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hkt" or (errorHandler.buildDepError "hkt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }