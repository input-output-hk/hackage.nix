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
      identifier = { name = "finite-table"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2017-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>";
      author = "Andrew Pritchard <awpritchard@gmail.com>";
      homepage = "https://github.com/awpr/fin-vec#readme";
      url = "";
      synopsis = "Types isomorphic to Fin, and Tables indexed by them.";
      description = "This provides a class `Finite` for types isomorphic to some `Fin n`, and\nuses it to implement array-backed total maps (`Table`s) indexed by them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
          (hsPkgs."short-vec-lens" or (errorHandler.buildDepError "short-vec-lens"))
          (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
          (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
        ];
        buildable = true;
      };
      tests = {
        "Finite-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."finite-table" or (errorHandler.buildDepError "finite-table"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
            (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."short-vec-lens" or (errorHandler.buildDepError "short-vec-lens"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
          ];
          buildable = true;
        };
      };
    };
  }