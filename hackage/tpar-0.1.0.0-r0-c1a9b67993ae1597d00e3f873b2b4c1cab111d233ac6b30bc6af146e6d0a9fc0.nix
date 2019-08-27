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
      identifier = { name = "tpar"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2016 Ben Gamari <bgamari@gmail.com>";
      maintainer = "bgamari@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/tpar/";
      url = "";
      synopsis = "simple, parallel job scheduling";
      description = "@tpar@ is a simple job scheduling and dispatch service for distributing and\nmonitoring tasks across machines. It was written to serve as a simple and\neasy-to-administer substitute for systems like Grid Engine.\n\nConfiguring a @tpar@ instance is simply a matter of running @tpar server@ on\na designated server machine,\n\n@\n\$ # We'll need to know the hostname of the server\n\$ hostname\nmy-server\n\$ # Start a server also running 8 local workers\n\$ tpar server -Hmy-server -N8\n@\n\nSubmitting a job is then similarly easy,\n\n@\n\$ tpar enqueue -H`hostname` -- long-process arg1 arg2\n@\n\nOne can then enqueue jobs easily\n\n@\n\$ tpar enqueue -Hmy-server -- bash -c \"primes 10000000000  | head -n1\"\n\$ tpar status -v\n0     unnamed-job                                        finished\npriority:       0\nqueued:         1 seconds ago\ncommand:        bash\narguments:      -c primes 10000000000  | head -n1\nlogging:        stdout: none\nstderr: none\nstatus:         finished with 0 (at 1 seconds ago)\nstarted at 1 seconds ago\nran on nid://localhost:5757:0\n@\n\nOne can add more workers to help churn through the work queue using the\n@tpar worker@ command,\n\n@\n\$ # Add 16 more workers running on another machine\n\$ ssh my-workers -- tpar worker -Hmy-server -N16\n@\n\nFinally, the output of running jobs can be monitored using the @tpar watch@\ncommand,\n\n@\n\$ tpar watch id=0\n@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tpar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."friendly-time" or (buildDepError "friendly-time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."heaps" or (buildDepError "heaps"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."trifecta" or (buildDepError "trifecta"))
            (hsPkgs."parsers" or (buildDepError "parsers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."heaps" or (buildDepError "heaps"))
            (hsPkgs."trifecta" or (buildDepError "trifecta"))
            ];
          };
        };
      };
    }