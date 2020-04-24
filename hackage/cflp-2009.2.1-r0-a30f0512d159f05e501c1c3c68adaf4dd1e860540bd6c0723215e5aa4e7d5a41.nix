{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cflp"; version = "2009.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://www-ps.informatik.uni-kiel.de/~sebf/projects/cflp.html";
      url = "";
      synopsis = "Constraint Functional-Logic Programming in Haskell";
      description = "This package provides combinators for constraint\nfunctional-logic programming ((C)FLP) in Haskell. The\ncombinators might later be used as a target language for\ncompiling programs written in an FLP language like Curry\nor Toy. Another application of FLP is demand driven\ntest-case generation.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."control-monad-omega" or ((hsPkgs.pkgs-errors).buildDepError "control-monad-omega"))
          (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
          (hsPkgs."level-monad" or ((hsPkgs.pkgs-errors).buildDepError "level-monad"))
          (hsPkgs."stream-monad" or ((hsPkgs.pkgs-errors).buildDepError "stream-monad"))
          (hsPkgs."incremental-sat-solver" or ((hsPkgs.pkgs-errors).buildDepError "incremental-sat-solver"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."value-supply" or ((hsPkgs.pkgs-errors).buildDepError "value-supply"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }