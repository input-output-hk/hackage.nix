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
    flags = { tcp = false; simplelocalnet = false; p2p = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cloud-haskell"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "watson.timothy@gmail.com";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/cloud-haskell";
      url = "";
      synopsis = "The Cloud Haskell Application Platform";
      description = "Cloud Haskell is a set of libraries that bring Erlang-style\nconcurrency and distribution to Haskell programs. This\nproject is an implementation of that distributed computing\ninterface, where processes communicate with one another through\nexplicit message passing rather than shared memory.\n\nThis package is just a convenient wrapper\naround the @distributed-process-platform@, @distributed-process@ and\n@network-transport@ packages, so they can be\ninstalled with a single @cabal install cloud-haskell@\ncommand.\n\nThe package also comes with flags to enable\ndifferent @Network.Transport@ and /Cloud Haskell/\n(network topology) backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."rank1dynamic" or (buildDepError "rank1dynamic"))
          (hsPkgs."distributed-static" or (buildDepError "distributed-static"))
          (hsPkgs."network-transport" or (buildDepError "network-transport"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."distributed-process-extras" or (buildDepError "distributed-process-extras"))
          (hsPkgs."distributed-process-async" or (buildDepError "distributed-process-async"))
          (hsPkgs."distributed-process-client-server" or (buildDepError "distributed-process-client-server"))
          (hsPkgs."distributed-process-supervisor" or (buildDepError "distributed-process-supervisor"))
          (hsPkgs."distributed-process-task" or (buildDepError "distributed-process-task"))
          (hsPkgs."distributed-process-execution" or (buildDepError "distributed-process-execution"))
          ] ++ (pkgs.lib).optional (flags.tcp) (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))) ++ (pkgs.lib).optional (flags.simplelocalnet) (hsPkgs."distributed-process-simplelocalnet" or (buildDepError "distributed-process-simplelocalnet"))) ++ (pkgs.lib).optional (flags.p2p) (hsPkgs."distributed-process-p2p" or (buildDepError "distributed-process-p2p"));
        buildable = true;
        };
      };
    }