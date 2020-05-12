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
      identifier = { name = "nestedmap"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kirstin.rhys@gmail.com";
      author = "kirstin penelope rhys";
      homepage = "";
      url = "";
      synopsis = "A library for nested maps";
      description = "This library supports deeply nested key to value mapping.\nVery much like Data.Map, but for heigher, hierarchial dimensions.\nIt could be used for thing such as markov chains, sparse tensors\nor matricies which could contain non-numeric data, file systems, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
            ];
          buildable = true;
          };
        };
      };
    }