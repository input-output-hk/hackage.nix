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
      identifier = { name = "unboxing-vector"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 ARATA Mizuki";
      maintainer = "ARATA Mizuki <minorinoki@gmail.com>";
      author = "ARATA Mizuki <minorinoki@gmail.com>";
      homepage = "https://github.com/minoki/unboxing-vector#readme";
      url = "";
      synopsis = "A newtype-friendly variant of unboxed vectors";
      description = "Please see the README on GitHub at <https://github.com/minoki/unboxing-vector#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "unboxing-vector-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."unboxing-vector" or (errorHandler.buildDepError "unboxing-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "unboxing-vector-test-deriving-via" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."unboxing-vector" or (errorHandler.buildDepError "unboxing-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.6.1"
            then true
            else false;
          };
        "unboxing-vector-test-gnd" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unboxing-vector" or (errorHandler.buildDepError "unboxing-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.2.1"
            then true
            else false;
          };
        };
      benchmarks = {
        "unboxing-vector-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unboxing-vector" or (errorHandler.buildDepError "unboxing-vector"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }