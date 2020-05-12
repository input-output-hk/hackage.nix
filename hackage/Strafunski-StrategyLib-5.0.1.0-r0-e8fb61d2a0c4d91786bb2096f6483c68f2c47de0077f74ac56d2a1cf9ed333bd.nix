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
      specVersion = "1.8";
      identifier = { name = "Strafunski-StrategyLib"; version = "5.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darmanithird@gmail.com,alan.zimm@gmail.com";
      author = "Ralf Laemmel, Joost Visser";
      homepage = "";
      url = "";
      synopsis = "Library for strategic programming";
      description = "This is a version of the StrategyLib library originally shipped with Strafunski, Cabalized and updated to newer versions of GHC. A description of much of StrategyLib can be found in the paper \"Design Patterns for Functional Strategic Programming.\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      };
    }