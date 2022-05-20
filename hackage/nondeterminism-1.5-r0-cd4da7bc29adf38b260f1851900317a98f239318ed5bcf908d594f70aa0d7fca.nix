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
      identifier = { name = "nondeterminism"; version = "1.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Andrei Barbu <andrei@0xab.com>";
      author = "Andrei Barbu <andrei@0xab.com>";
      homepage = "";
      url = "";
      synopsis = "A monad and monad transformer for nondeterministic computations.";
      description = "Nondeterministic computations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "AmbTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."nondeterminism" or (errorHandler.buildDepError "nondeterminism"))
            ];
          buildable = true;
          };
        };
      };
    }