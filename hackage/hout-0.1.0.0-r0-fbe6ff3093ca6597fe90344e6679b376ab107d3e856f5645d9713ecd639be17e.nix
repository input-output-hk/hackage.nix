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
      identifier = { name = "hout"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Isaac van Bakel";
      maintainer = "ivb@vanbakel.io";
      author = "Isaac van Bakel";
      homepage = "https://github.com/ivanbakel/hout-prover#readme";
      url = "";
      synopsis = "Non-interactive proof assistant monad for first-order logic.";
      description = "Hout is an in-Haskell non-interactive proof assistant for\nintuitionistic first-order logic, using Haskell's type\nsystem. If a proof written in Hout compiles, it is correct.\n\nAlternatively, Hout provides an indexed monad which,\ncombined with Haskell's do notation, allows for writing\nHaskell code in the style of proof assistants.\n\nThe main part of Hout's value is found in\n\"Hout.Prover.Tactics\", which defines the @Tactic@ monad\nand several proof tactics similar to those found in Coq.\nOther useful defintions for using Hout can be found in\n\"Hout.Prover.Proofs\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
            (hsPkgs."do-notation" or (errorHandler.buildDepError "do-notation"))
            (hsPkgs."hout" or (errorHandler.buildDepError "hout"))
            ];
          buildable = true;
          };
        };
      };
    }