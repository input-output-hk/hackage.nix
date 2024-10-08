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
      specVersion = "2.2";
      identifier = { name = "unique-logic"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/unique-logic/";
      url = "";
      synopsis = "Solve simple simultaneous equations";
      description = "Solve a number of equations simultaneously.\nThis is not Computer Algebra,\nbetter think of a kind of type inference algorithm\nor logic programming with only one allowed solution.\n\nOnly one solution is computed.\nSimultaneous equations with multiple solutions are not allowed.\nHowever, variables may remain undefined.\nThe solver may optionally check for consistency.\nIt does not do so by default\nsince with floating point numbers or symbolic expressions\neven simple rules may not be consistent.\n\nThe modules ordered with respect to abstraction level are:\n\n* \"UniqueLogic.ST.System\":\nConstruct and solve sets of functional dependencies.\nExample: @assignment3 (+) a b c@ meaning dependency @a+b -> c@.\n\n* \"UniqueLogic.ST.Rule\":\nCombine functional dependencies to rules\nthat can apply in multiple directions.\nExample: @add a b c@ means relation @a+b = c@\nwhich resolves to dependencies @a+b -> c, c-a -> b, c-b -> a@.\nFor an executable example see \"UniqueLogic.ST.Example.Rule\".\n\n* \"UniqueLogic.ST.Expression\":\nAllows to write rules using arithmetic operators.\nIt creates temporary variables automatically.\nExample: @(a+b)*c =:= d@ resolves to @a+b = x, x*c = d@.\nFor an executable example see \"UniqueLogic.ST.Example.Expression\".\n\n* \"UniqueLogic.ST.System.Simple\":\nProvides specialised functions from \"UniqueLogic.ST.System\"\nfor the case of a system without labels and consistency checks.\n\n* \"UniqueLogic.ST.System.Label\":\nProvides a custom constructor for variables.\nWhen creating a variable you decide whether and how\nan assignment to this variable shall be logged.\nThere is an example that shows how to solve a logic system\nusing symbolic expressions.\nThe naming and logging allows us to observe shared intermediate results.\nFor an executable example see \"UniqueLogic.ST.Example.Label\".\n\n* By using more sophisticated monad transformers,\nwe can check the equations for consistency,\nreport inconsistencies and how they arised.\nWe demonstrate that in \"UniqueLogic.ST.Example.Verify\".\n\nThe package is purely Haskell 98.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "test-unique-logic" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."unique-logic" or (errorHandler.buildDepError "unique-logic"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }