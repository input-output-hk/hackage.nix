let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "expressions"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Jakub Daniel";
      maintainer = "jakub.daniel@protonmail.com";
      author = "Jakub Daniel";
      homepage = "";
      url = "";
      synopsis = "Expressions and Formulae a la carte";
      description = "This package is aimed at providing means of fixing a first-order language and\ndeclaring sorted expressions and formulae, the types ensure the declared\nexpressions fall within the language.\n\nThis package pre-defines the common logical symbols for conjunction,\ndisjunction, negation, and universal and existential quantification as well\nas some specific non-logical symbols such as equality, addition of linear\ninteger arithmetic, and other. Common languages such as Lia and ALia\n(standard linear integer arithmetic and linear integer arithmetic with\narrays) come included.\n\nAn example of a formula declaration:\n\n> -- Let's state that zero is successor to no integer (while this would be\n> -- true for non-negative integers, stated this way it is clearly false, but\n> -- it still is a well-formed first-order statement)\n>\n> forall [var \"x\" :: Var 'IntegralSort] (cnst 0 ./=. var \"x\" .+. cnst 1) :: Lia 'BooleanSort\n\nLet's see what declarations the library rejects:\n\n> (var \"x\" :: Lia 'BooleanSort) .=. (var \"y\" :: Lia 'IntegralSort)\n> (var \"x\" :: Lia 'BooleanSort) .=. (var \"y\" :: ALia 'BooleanSort)\n> forall [var \"x\" :: Var 'IntegralSort] true :: QFLia 'BooleanSort";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lattices" or (buildDepError "lattices"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."expressions" or (buildDepError "expressions"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }