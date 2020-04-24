{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "unique-logic-tf"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://code.haskell.org/~thielema/unique-logic-tf/";
      url = "";
      synopsis = "Solve simple simultaneous equations";
      description = "Solve a number of equations simultaneously.\nThis is not Computer Algebra,\nbetter think of a kind of type inference algorithm\nor logic programming with only one allowed solution.\n\nOnly one solution is computed.\nSimultaneous equations with multiple solutions are not allowed.\nHowever, variables may remain undefined.\nThe solver may optionally check for consistency.\nIt does not do so by default\nsince with floating point numbers or symbolic expressions\neven simple rules may not be consistent.\n\nThe modules ordered with respect to abstraction level are:\n\n* \"UniqueLogic.ST.TF.System\":\nConstruct and solve sets of functional dependencies.\nExample: @assignment3 (+) a b c@ meaning dependency @a+b -> c@.\n\n* \"UniqueLogic.ST.TF.Rule\":\nCombine functional dependencies to rules\nthat can apply in multiple directions.\nExample: @add a b c@ means relation @a+b = c@\nwhich resolves to dependencies @a+b -> c, c-a -> b, c-b -> a@.\nFor an executable example see \"UniqueLogic.ST.TF.Example.Rule\".\n\n* \"UniqueLogic.ST.TF.Expression\":\nAllows to write rules using arithmetic operators.\nIt creates temporary variables automatically.\nExample: @(a+b)*c =:= d@ resolves to @a+b = x, x*c = d@.\nFor an executable example see \"UniqueLogic.ST.TF.Example.Expression\".\n\n* \"UniqueLogic.ST.TF.System.Simple\":\nProvides specialised functions from \"UniqueLogic.ST.TF.System\"\nfor the case of a system without labels and consistency checks.\n\n* \"UniqueLogic.ST.TF.System.Label\":\nProvides a custom constructor for variables.\nWhen creating a variable you decide whether and how\nan assignment to this variable shall be logged.\nThere is an example that shows how to solve a logic system\nusing symbolic expressions.\nThe naming and logging allows us to observe shared intermediate results.\nFor an executable example see \"UniqueLogic.ST.TF.Example.Label\".\n\n* By using more sophisticated monad transformers,\nwe can check the equations for consistency,\nreport inconsistencies and how they arised.\nWe demonstrate that in \"UniqueLogic.ST.TF.Example.Verify\".\n\nThis variant of the package requires type families.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test-unique-logic" = {
          depends = [
            (hsPkgs."unique-logic-tf" or ((hsPkgs.pkgs-errors).buildDepError "unique-logic-tf"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }