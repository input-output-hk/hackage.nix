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
      identifier = { name = "z3-encoding"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "izgzhen@gmail.com";
      author = "Zhen Zhang";
      homepage = "";
      url = "";
      synopsis = "High-level assertion encoding to Z3 solver";
      description = "A library targeting at providing high-level, extensible, easy to use Haskell interface to Z3 solver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."z3" or (errorHandler.buildDepError "z3"))
        ];
        buildable = true;
      };
      tests = {
        "z3-encoding-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."z3" or (errorHandler.buildDepError "z3"))
            (hsPkgs."z3-encoding" or (errorHandler.buildDepError "z3-encoding"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }