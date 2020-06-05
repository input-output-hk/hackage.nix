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
      identifier = { name = "simple-vec3"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/simple-vec3#readme";
      url = "";
      synopsis = "Three-dimensional vectors of doubles with basic operations";
      description = "Simple three-dimensional vectors of doubles with basic vector and matrix operations, supporting \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "simple-vec3-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-driver-gen" or (errorHandler.buildDepError "doctest-driver-gen"))
            ];
          buildable = true;
          };
        "simple-vec3-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-vec3" or (errorHandler.buildDepError "simple-vec3"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "simple-vec3-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."simple-vec3" or (errorHandler.buildDepError "simple-vec3"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }