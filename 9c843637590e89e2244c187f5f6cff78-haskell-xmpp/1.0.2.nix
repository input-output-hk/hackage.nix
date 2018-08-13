{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskell-xmpp";
        version = "1.0.2";
      };
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
      "haskell-xmpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.pretty)
          (hsPkgs.array)
          (hsPkgs.HaXml)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.html)
          (hsPkgs.polyparse)
          (hsPkgs.regex-compat)
          (hsPkgs.stm)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "haskell-xmpp-test" = {
          depends  = pkgs.lib.optional (_flags.examples) (hsPkgs.base);
        };
      };
    };
  }