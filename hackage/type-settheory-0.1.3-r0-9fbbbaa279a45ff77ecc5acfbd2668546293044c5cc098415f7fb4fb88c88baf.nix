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
      specVersion = "1.6";
      identifier = { name = "type-settheory"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniels@community.haskell.org";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Sets and functions-as-relations in the type system";
      description = "Type classes can express sets and functions on the type level, but they are not first-class. This package expresses type-level sets and functions as /types/ instead.\n\nInstances are replaced by value-level proofs which can be directly manipulated; this makes quite a bit of (constructive) set theory expressible; for example, we have:\n\n* Subsets and extensional set equality\n\n* Unions (binary or of sets of sets), intersections, cartesian products, powersets, and a sort of dependent sum and product\n\n* Functions and their composition, images, preimages, injectivity\n\nThe proposition-types (derived from the ':=:' equality type) aren't meaningful purely by convention; they relate to the rest of Haskell as follows: A proof of @A :=: B@ gives us a safe coercion operator @A -> B@ (while the logic is inevitably inconsistent /at compile-time/ since 'undefined' proves anything, I think that we still have the property that if the 'Refl' value is successfully pattern-matched, then the two parameters in its type are actually equal).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."type-equality" or (buildDepError "type-equality"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      };
    }