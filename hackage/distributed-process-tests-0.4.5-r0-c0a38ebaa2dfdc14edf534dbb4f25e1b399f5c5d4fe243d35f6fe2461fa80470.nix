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
    flags = { tcp = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-tests"; version = "0.4.5"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process/tree/master/distributed-process-tests";
      url = "";
      synopsis = "Tests and test support tools for distributed-process.";
      description = "Tests and test suite for Cloud Haskell libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."network-transport" or (buildDepError "network-transport"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."rematch" or (buildDepError "rematch"))
          (hsPkgs."setenv" or (buildDepError "setenv"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.4.2") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      tests = {
        "TestCHInMemory" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        "TestCHInTCP" = {
          depends = (pkgs.lib).optionals (flags.tcp) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        "TestClosure" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        "TestStats" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        "TestMx" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        "TestTracing" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        };
      };
    }