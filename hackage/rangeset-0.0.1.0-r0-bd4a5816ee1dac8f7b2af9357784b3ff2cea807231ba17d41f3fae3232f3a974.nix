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
    flags = { safe-haskell-rangeset = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "rangeset"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jamie Willis <j.willis19@imperial.ac.uk>";
      author = "Jamie Willis, range-set Contributors";
      homepage = "https://github.com/j-mie6/rangeset/tree/master";
      url = "";
      synopsis = "Efficient sets for semi-contiguous data";
      description = "Exposes the range-set datastructure, which can encode\nenumerable data efficiently by compressing contiguous\nranges of members within the set.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
        ];
        buildable = true;
      };
      tests = {
        "rangeset" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rangeset" or (errorHandler.buildDepError "rangeset"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "rangeset-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rangeset" or (errorHandler.buildDepError "rangeset"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          ];
          buildable = true;
        };
      };
    };
  }