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
      specVersion = "2.2";
      identifier = { name = "ralist"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Carter Schonwald";
      author = "Lennart Augustsson, Carter Schonwald";
      homepage = "http://github.com/cartazio/ralist";
      url = "";
      synopsis = "Random access list with a list compatible interface.";
      description = "Random access list with a list compatible interface.\nRandom access list have same complexity as lists with some exceptions,\nthe notable one being that (!!) is O(log n) instead of O(n).\nRALists have to be finite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ralist" or (errorHandler.buildDepError "ralist"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarking" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ralist" or (errorHandler.buildDepError "ralist"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }