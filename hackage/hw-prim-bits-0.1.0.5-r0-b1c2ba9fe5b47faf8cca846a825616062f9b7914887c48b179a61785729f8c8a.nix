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
      specVersion = "2.4";
      identifier = { name = "hw-prim-bits"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2017-2021 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/githubuser/hw-prim-bits#readme";
      url = "";
      synopsis = "Primitive support for bit manipulation";
      description = "Primitive support for bit manipulation. Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "hw-prim-bits-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hw-prim-bits" or (errorHandler.buildDepError "hw-prim-bits"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hw-prim-bits-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-hedgehog" or (errorHandler.buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim-bits" or (errorHandler.buildDepError "hw-prim-bits"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
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
            (hsPkgs."hw-prim-bits" or (errorHandler.buildDepError "hw-prim-bits"))
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
            (hsPkgs."hw-prim-bits" or (errorHandler.buildDepError "hw-prim-bits"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }