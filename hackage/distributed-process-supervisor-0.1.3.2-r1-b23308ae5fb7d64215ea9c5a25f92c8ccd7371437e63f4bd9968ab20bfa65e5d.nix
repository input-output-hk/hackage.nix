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
      specVersion = "1.8";
      identifier = {
        name = "distributed-process-supervisor";
        version = "0.1.3.2";
        };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2013";
      maintainer = "Tim Watson <watson.timothy@gmail.com>";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-supervisor";
      url = "";
      synopsis = "Supervisors for The Cloud Haskell Application Platform";
      description = "A part of the Cloud Haskell framework\nThis package implements a process which supervises a set of other processes, referred to as its children.\nThese child processes can be either workers (i.e., processes that do something useful in your application)\nor other supervisors. In this way, supervisors may be used to build a hierarchical process structure\ncalled a supervision tree, which provides a convenient structure for building fault tolerant software.\nFor detailed information see \"Control.Distributed.Process.Supervisor\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."distributed-process-extras" or (buildDepError "distributed-process-extras"))
          (hsPkgs."distributed-process-client-server" or (buildDepError "distributed-process-client-server"))
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
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).le "7.5") [
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      tests = {
        "SupervisorTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-supervisor" or (buildDepError "distributed-process-supervisor"))
            (hsPkgs."distributed-process-extras" or (buildDepError "distributed-process-extras"))
            (hsPkgs."distributed-process-client-server" or (buildDepError "distributed-process-client-server"))
            (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."rematch" or (buildDepError "rematch"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          };
        };
      };
    }