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
      specVersion = "0";
      identifier = { name = "net-concurrent"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "BSD";
      maintainer = "Paul Sonkoly";
      author = "Paul Sonkoly";
      homepage = "http://phaul.hobby-site.org/node/4123";
      url = "http://phaul.hobby-site.org/repository/4123/downloads";
      synopsis = "Concurrent over the network execution library";
      description = "net-concurrent is a simple haskell library for doing parallel\ncomputation on several computers using the network. There is a\nsingle master process and many slave processes. Communication\nis between the master and the slaves, for simplicity slaves\nnever communicate with each other.\nCommunication is done using NVars, network variables.\nThe NVar api is very similar to MVar. These are stored in the\nmaster process and shared between all processes in the system.\nSlave nodes can read and write these NVar variables which results\nin network transactions with the master.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-binary" or (buildDepError "ghc-binary"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      };
    }