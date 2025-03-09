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
    flags = { bmi2 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "bits-extra"; version = "0.0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2018-2021 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/bits-extra#readme";
      url = "";
      synopsis = "Useful bitwise operations";
      description = "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "bits-extra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-hedgehog" or (errorHandler.buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.doctest-discover.components.exes.doctest-discover or (pkgs.pkgsBuildBuild.doctest-discover or (errorHandler.buildToolDepError "doctest-discover:doctest-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
          ];
          buildable = true;
        };
      };
    };
  }