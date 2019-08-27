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
      identifier = { name = "concurrent-machines"; version = "0.2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Concurrent networked stream transducers";
      description = "A simple use-case for this library is to run the stages\nof a pipelined streaming computation concurrently. If\ndata is streaming through multiple processing stages, you\nmight build a machine like\n\n@\nstep1 >~> step2 >~> step3\n@\n\nThe @>~>@ operator connects the machines on\neither side with a one-element buffer. This means that\ndata is pulled from upstream sources eagerly (perhaps\npulling one more value than will be consumed by\ndownstream), but it also means that each stage can be\nworking simultaneously, increasing throughput of the\nentire pipeline.\n\nA few small examples are available in the @examples@\ndirectory of the source repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."concurrent-machines" or (buildDepError "concurrent-machines"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      benchmarks = {
        "fanout" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."machines" or (buildDepError "machines"))
            (hsPkgs."concurrent-machines" or (buildDepError "concurrent-machines"))
            ];
          };
        };
      };
    }