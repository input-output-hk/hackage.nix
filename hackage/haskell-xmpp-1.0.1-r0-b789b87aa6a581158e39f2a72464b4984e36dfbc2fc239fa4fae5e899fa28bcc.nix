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
    flags = { examples = false; debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-xmpp"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2011 Dmitry Astapov, k.pierre";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>, pierre <k.pierre.k@gmail.com>";
      homepage = "http://patch-tag.com/r/adept/haskell-xmpp/home";
      url = "";
      synopsis = "Haskell XMPP (eXtensible Message Passing Protocol, a.k.a. Jabber) library";
      description = "Haskell XMPP (eXtensible Message Passing Protocol, a.k.a. Jabber) library\n\nUnlike package network-protocol-xmpp, which uses libxml-sax, this library uses HaXml and supports MUC.\nHowever, MUC support of the moment is worse than that in package XMPP.\n\nThis library make extensive use of STM and threads to simplify writing message-handling code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."polyparse" or (buildDepError "polyparse"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        };
      exes = {
        "haskell-xmpp-test" = {
          depends = (pkgs.lib).optional (flags.examples) (hsPkgs."base" or (buildDepError "base"));
          };
        };
      };
    }