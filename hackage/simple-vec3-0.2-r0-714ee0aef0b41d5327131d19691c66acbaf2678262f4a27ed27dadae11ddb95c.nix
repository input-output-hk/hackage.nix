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
      identifier = { name = "simple-vec3"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dima@dzhus.org>";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/simple-vec3#readme";
      url = "";
      synopsis = "Three-dimensional vectors of doubles with basic operations";
      description = "A class of 3-vectors with a set of basic methods for geometry operations on vectors and an associated matrix type. Instances are provided for use with \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\" as container types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          ];
        buildable = true;
        };
      tests = {
        "pythia-recommender-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
            (hsPkgs."simple-vec3" or (errorHandler.buildDepError "simple-vec3"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "simple-vec3-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."simple-vec3" or (errorHandler.buildDepError "simple-vec3"))
            ];
          buildable = true;
          };
        };
      };
    }