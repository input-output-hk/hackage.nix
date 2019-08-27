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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "acid-state-dist"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "<max.voit+hdv@with-eyes.net>";
      author = "Max Voit";
      homepage = "";
      url = "";
      synopsis = "A replication backend for acid-state";
      description = "This package provides a backend to AcidState featuring\nMasterState and SlaveState. Using these allows you to run\nan acid-state application in a distributed setup, working\nwith the same state everywhere. Optionally redundancy\nguarantees are available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."acid-state" or (buildDepError "acid-state"))
          (hsPkgs."concurrent-extra" or (buildDepError "concurrent-extra"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      tests = {
        "Simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "SlaveUpdates" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "CRCFail" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "CheckpointSync" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "OrderingRandom" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "NReplication" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "UpdateError" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "SyncTimeout" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        };
      benchmarks = {
        "Local" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            ];
          };
        "MasterOnly" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "MasterSlave" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        "Slave" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (buildDepError "acid-state-dist"))
            ];
          };
        };
      };
    }