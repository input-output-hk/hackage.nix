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
    flags = { perf = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-async"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2016";
      maintainer = "Tim Watson <watson.timothy@gmail.com>";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-async";
      url = "";
      synopsis = "Cloud Haskell Async API";
      description = "This package provides a higher-level interface over Processes, in which an Async a is a\nconcurrent, possibly distributed Process that will eventually deliver a value of type a.\nThe package provides ways to create Async computations, wait for their results, and cancel them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "AsyncTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-async" or (buildDepError "distributed-process-async"))
            (hsPkgs."distributed-process-systest" or (buildDepError "distributed-process-systest"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."rematch" or (buildDepError "rematch"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }