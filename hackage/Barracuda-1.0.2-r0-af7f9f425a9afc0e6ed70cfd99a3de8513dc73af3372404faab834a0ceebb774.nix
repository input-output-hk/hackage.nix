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
      identifier = { name = "Barracuda"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs <stephan.friedrichs@tu-bs.de>,\nHenning Günther <h.guenther@tu-bs.de>,\nOliver Mielentz <o.mielentz@tu-bs.de>,\nMartin Wegner <mw@mroot.net>";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "An ad-hoc P2P chat program";
      description = "An ad-hoc chat program developed in the software development\ncourse at the TU-Braunschweig. Barracuda (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner) implements an\nad-hoc (p2p) network. On top of that, a chat application has been realised.\n\nJust like in IRC, the communication is organised in channels. A channel may be\nanonymous (the messages' origin is obscured), private (encrypted, only invited\nusers may join them) or public (free for all users).\n\nThe design is elaborated in a series of RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."pkcs1" or (buildDepError "pkcs1"))
          (hsPkgs."heap" or (buildDepError "heap"))
          (hsPkgs."hsgnutls" or (buildDepError "hsgnutls"))
          (hsPkgs."xml-parsec" or (buildDepError "xml-parsec"))
          (hsPkgs."adhoc-network" or (buildDepError "adhoc-network"))
          ];
        };
      exes = {
        "Barracuda" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Crypto" or (buildDepError "Crypto"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dataenc" or (buildDepError "dataenc"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."pkcs1" or (buildDepError "pkcs1"))
            (hsPkgs."heap" or (buildDepError "heap"))
            (hsPkgs."hsgnutls" or (buildDepError "hsgnutls"))
            (hsPkgs."xml-parsec" or (buildDepError "xml-parsec"))
            (hsPkgs."adhoc-network" or (buildDepError "adhoc-network"))
            ];
          };
        };
      };
    }