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
      specVersion = "1.2.3";
      identifier = { name = "DSTM"; version = "0.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2010, Frank Kupke";
      maintainer = "frk@informatik.uni-kiel.de";
      author = "Frank Kupke";
      homepage = "";
      url = "";
      synopsis = "A framework for using STM within distributed systems";
      description = "The DSTM package consists of the DSTM library, a name server application, and\nthree sample distributed programs using the library. DSTM is a framework\nenabling the use of the STM interface, known from concurrent programming, to be\nused for distributed Haskell applications as well. Provided are a simple Dining\nPhilosophers, a Chat, and a soft real-time Bomberman game application.\n\nDistributed communication is transparent to the application programmer. The\napplication designer uses a very simple nameserver mechanism to set up the\nsystem. The DSTM library includes the management of unavailable process nodes\nand provides the application with abstract error information thus facilitating\nthe implementation of robust distributed application programs.\n\nFor usage please look into the included file: DSTMManual.pdf, also available at\nhttp:\\/\\/www.informatik.uni-kiel.de\\/prog\\/mitarbeiter\\/frank-kupke\\/.\n\nChanges from last version:\n\n* documentation available online\n\n* fixed typos in Chat example\n\n* set debug flags to no debug output";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "NameServer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "Phil" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "ChatClient" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "ChatServer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "Bomberman" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }