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
      identifier = { name = "hw-prim-bits"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/githubuser/hw-prim-bits#readme";
      url = "";
      synopsis = "Primitive support for bit manipulation";
      description = "Please see README.md";
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