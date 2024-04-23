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
      specVersion = "2.0";
      identifier = { name = "typerep-map"; version = "0.3.1"; };
      license = "MIT";
      copyright = "2017-2019 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik, Vladislav Zavialov";
      homepage = "https://github.com/kowainik/typerep-map";
      url = "";
      synopsis = "Efficient implementation of a dependent map with types as keys";
      description = "A dependent map from type representations to values of these types.\n\nHere is an illustration of such a map:\n\n>     TMap\n> ---------------\n>  Int  -> 5\n>  Bool -> True\n>  Char -> 'x'\n\nIn addition to @TMap@, we provide @TypeRepMap@ parametrized by a\n@vinyl@-style interpretation. This data structure is equivalent to @DMap\nTypeRep@, but with significantly more efficient lookups.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      sublibs = {
        "typerep-extra-impls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
      tests = {
        "typerep-map-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
            (hsPkgs."typerep-map".components.sublibs.typerep-extra-impls or (errorHandler.buildDepError "typerep-map:typerep-extra-impls"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "typerep-map-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
            (hsPkgs."typerep-map".components.sublibs.typerep-extra-impls or (errorHandler.buildDepError "typerep-map:typerep-extra-impls"))
          ];
          buildable = true;
        };
      };
    };
  }