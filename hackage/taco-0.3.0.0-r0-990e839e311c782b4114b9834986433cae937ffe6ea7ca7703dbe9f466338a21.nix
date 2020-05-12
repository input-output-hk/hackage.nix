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
      identifier = { name = "taco"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/taco-hs#readme";
      url = "";
      synopsis = "Tensor Algebra COmpiler";
      description = "Types and a compiler for tensor expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."taco" or (errorHandler.buildDepError "taco"))
            ];
          buildable = true;
          };
        };
      };
    }