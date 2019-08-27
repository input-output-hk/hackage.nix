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
    flags = { install-benchmarks = false; distributed-process-tests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-transport-zeromq"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015, EURL Tweag";
      maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
      author = "Tweag I/O";
      homepage = "https://github.com/tweag/network-transport-zeromq";
      url = "";
      synopsis = "ZeroMQ backend for network-transport";
      description = "Implementation of the\n<http://hackage.haskell.org/package/network-transport\nnetwork-transport> API over ZeroMQ. This provides access to the\nwealth of transports implemented in ZeroMQ, such as in-process,\ninter-process, TCP, TPIC and multicast. Furthermore, this makes it\npossible to encrypt and authenticate clients using ZeroMQ's security\nmechanisms, and increase throughput using ZeroMQ's intelligent\nmessage batching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."network-transport" or (buildDepError "network-transport"))
          (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          ];
        };
      exes = {
        "bench-dp-latency" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            ];
          };
        "bench-dp-throughput" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ];
          };
        "bench-dp-channels" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ];
          };
        };
      tests = {
        "test-zeromq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."network-transport-tests" or (buildDepError "network-transport-tests"))
            ];
          };
        "test-api" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        "test-ch-core" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "test-ch-closure" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "test-ch-stat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      benchmarks = {
        "bench-channels-local" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        "bench-latency-local" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        "bench-throughput-local" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }