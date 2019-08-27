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
    flags = {
      arrows = false;
      invariant = true;
      lens = true;
      partial-isomorphisms = true;
      piso = false;
      semigroupoids = true;
      typecompose = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "invertible"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "bidirectional arrows, bijective functions, and invariant functors";
      description = "Representations and operations for bidirectional arrows (total isomorphisms: an\narrow paired with its inverse).  Classes for invariant functors and monoidal\nfunctors.  Includes a number of useful bijections and operations, as well as\ninteroperability with related packages.\n\nMost users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (flags.arrows) (hsPkgs."arrows" or (buildDepError "arrows"))) ++ (pkgs.lib).optional (flags.invariant) (hsPkgs."invariant" or (buildDepError "invariant"))) ++ (pkgs.lib).optional (flags.lens) (hsPkgs."lens" or (buildDepError "lens"))) ++ (pkgs.lib).optional (flags.partial-isomorphisms) (hsPkgs."partial-isomorphisms" or (buildDepError "partial-isomorphisms"))) ++ (pkgs.lib).optional (flags.piso) (hsPkgs."Piso" or (buildDepError "Piso"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.typecompose) (hsPkgs."TypeCompose" or (buildDepError "TypeCompose"));
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."invertible" or (buildDepError "invertible"))
            ];
          };
        };
      };
    }