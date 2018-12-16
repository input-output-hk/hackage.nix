{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "websockets";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011 Siniša Biđin\n(c) 2011 Jasper Van der Jeugt";
      maintainer = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>";
      author = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "";
      url = "";
      synopsis = "A sensible and clean way to write WebSocket-capable servers in Haskell.";
      description = "This library allows you to write WebSocket-capable servers.\n\nSee an example: <http://github.com/jaspervdj/websockets/tree/master/example>.\n\nThe API of the 'Network.WebSockets' module should also contain enough\ninformation to get you started.\n\nThis library currently works with Chromium @>= 14@, and Firefox @>= 6@.\n\nSee also:\n\n* The specification of the WebSocket protocol:\n<http://www.whatwg.org/specs/web-socket-protocol/>\n\n* The JavaScript API for dealing with WebSockets:\n<http://www.w3.org/TR/websockets/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.enumerator)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.SHA)
          (hsPkgs.text)
        ];
      };
    };
  }