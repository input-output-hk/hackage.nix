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
      identifier = { name = "plan-applicative"; version = "2.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz.carrete@facebook.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Applicative/Arrow for resource estimation and progress tracking.";
      description = "This module contains a writer-like Applicative for giving\nmonoidal annotations to underlying computations. The\nannotations are available before running the computations.\nIt also allows tagging different parts of a computation as\nseparate steps, so that progress notifications can be\nemitted during execution. Optional steps are allowed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }