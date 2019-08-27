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
      identifier = { name = "adhoc-network"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "Ad-hoc P2P network protocol";
      description = "This is a library for ad hoc P2p networking, developed for the Barracuda\nchat client (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner).\n\nThis library implements the RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."hsgnutls" or (buildDepError "hsgnutls"))
          (hsPkgs."pkcs1" or (buildDepError "pkcs1"))
          (hsPkgs."xml-parsec" or (buildDepError "xml-parsec"))
          ];
        };
      };
    }