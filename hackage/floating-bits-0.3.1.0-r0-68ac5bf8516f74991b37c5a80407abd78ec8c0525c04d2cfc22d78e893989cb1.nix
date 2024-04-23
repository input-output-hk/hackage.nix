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
      identifier = { name = "floating-bits"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Anselm Jonas Scholl, (c) 2023 Julia Longtin";
      maintainer = "Julia Longtin <julia.longtin@gmail.com>";
      author = "Anselm Jonas Scholl";
      homepage = "";
      url = "";
      synopsis = "Bitwise accurate floating point conversion, and Unit of Lease Precision calculation.";
      description = "A small library to cast floating point values to integral values and back preserving the bit-pattern.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."floating-bits" or (errorHandler.buildDepError "floating-bits"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."floating-bits" or (errorHandler.buildDepError "floating-bits"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }