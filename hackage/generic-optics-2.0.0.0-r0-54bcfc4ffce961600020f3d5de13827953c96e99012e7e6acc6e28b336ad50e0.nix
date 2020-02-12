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
      identifier = { name = "generic-optics"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kiss.csongor.kiss@gmail.com";
      author = "Csongor Kiss";
      homepage = "https://github.com/kcsongor/generic-lens";
      url = "";
      synopsis = "Generically derive traversals, lenses and prisms.";
      description = "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.\n\nThe library exposes an @<https://hackage.haskell.org/package/optics optics>@ interface. For a van Laarhoven interface, see\n@<https://hackage.haskell.org/package/generic-lens generic-lens>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."generic-lens-core" or (buildDepError "generic-lens-core"))
          (hsPkgs."optics-core" or (buildDepError "optics-core"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "generic-optics-inspection-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."generic-optics" or (buildDepError "generic-optics"))
            (hsPkgs."optics-core" or (buildDepError "optics-core"))
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "generic-optics-bifunctor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."generic-optics" or (buildDepError "generic-optics"))
            (hsPkgs."optics-core" or (buildDepError "optics-core"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "generic-optics-syb-tree" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."generic-optics" or (buildDepError "generic-optics"))
            (hsPkgs."optics-core" or (buildDepError "optics-core"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }