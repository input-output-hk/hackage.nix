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
      identifier = { name = "existential"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "simon@cse.yorku.ca";
      author = "Simon Hudon";
      homepage = "";
      url = "";
      synopsis = "Existential types with lens-like accessors.";
      description = "Existential types encapsulated in Cell type together with some lens-like accessors. A template-haskell-based factory generator is also provided to use TypeRep to reconstruct Cell objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."serialize-instances" or (buildDepError "serialize-instances"))
          (hsPkgs."th-printf" or (buildDepError "th-printf"))
          (hsPkgs."quickcheck-report" or (buildDepError "quickcheck-report"))
          (hsPkgs."portable-template-haskell-lens" or (buildDepError "portable-template-haskell-lens"))
          (hsPkgs."control-invariants" or (buildDepError "control-invariants"))
          ];
        };
      };
    }