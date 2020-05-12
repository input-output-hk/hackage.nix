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
    flags = { testprogram = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "netwire"; version = "5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <ertesx@gmx.de>";
      author = "Ertugrul Söylemez <ertesx@gmx.de>";
      homepage = "http://hub.darcs.net/ertes/netwire";
      url = "";
      synopsis = "Functional reactive programming library";
      description = "This library provides interfaces for and implements wire arrows\nuseful both for functional reactive programming (FRP) and locally\nstateful programming (LSP).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "netwire-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
            ];
          buildable = if !flags.testprogram then false else true;
          };
        };
      };
    }