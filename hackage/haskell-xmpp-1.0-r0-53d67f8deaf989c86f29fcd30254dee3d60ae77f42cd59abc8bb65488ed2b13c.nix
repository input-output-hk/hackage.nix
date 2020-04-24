{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-xmpp"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2011 Dmitry Astapov, k.pierre";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>, pierre <k.pierre.k@gmail.com>";
      homepage = "http://adept.linux.kiev.ua/repos/xmpp";
      url = "";
      synopsis = "Haskell XMPP (eXtensible Message Passing Protocol, a.k.a. Jabber) library";
      description = "Haskell XMPP (eXtensible Message Passing Protocol, a.k.a. Jabber) library\n\nUnlike package network-protocol-xmpp, which uses libxml-sax, this library uses HaXml and supports MUC.\nHowever, MUC support of the moment is worse than that in package XMPP.\n\nThis library make extensive use of STM and threads to simplify writing message-handling code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-xmpp-test" = {
          depends = (pkgs.lib).optional (flags.examples) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
          buildable = if flags.examples then true else false;
          };
        };
      };
    }