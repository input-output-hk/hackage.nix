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
      specVersion = "2.2";
      identifier = { name = "equeue"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Application level triggered, and edge triggered event multiqueues.";
      description = "A system for providing late binding for how different types of events are handled.\n\nIt is often important for an application to control how it consumes updates for optimal\nprocessing, but event sources are typically in control of delivery. The EQueue abstraction\nallows the consumer to provide an implimentation that balances delivery for its needs.\nTo do this, it distinguishes events into two types, level and edge triggered.\n\nLevel triggered events are used where the resulting state is cared about and a pure model\nof how events combine is available as a Semigroup instance. The transitions it took to get\nto the new state between dequeues is not of interest.\n\nEdge triggered events are where the sequence of occurences are of importance, or a\npure model is not available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      tests = {
        "test-equeue" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."delay" or (buildDepError "delay"))
            (hsPkgs."equeue" or (buildDepError "equeue"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }