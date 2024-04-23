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
      specVersion = "1.8";
      identifier = { name = "sparse-lin-alg"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexey.alekhin@me.com";
      author = "Alexey Alekhin";
      homepage = "http://github.com/laughedelic/sparse-lin-alg";
      url = "";
      synopsis = "Effective linear algebra on sparse matrices";
      description = "Sparse matrices and vectors are represented using IntMaps, which store non-zero values. This library provides some useful functions for computations on them. Also some linear algebra algorithms are included. At the moment, they work only on integer domain.";
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
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }