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
      specVersion = "1.8";
      identifier = {
        name = "websockets";
        version = "0.9.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011 Siniša Biđin\n(c) 2011-2013 Jasper Van der Jeugt\n(c) 2011 Steffen Schuldenzucker\n(c) 2011 Alex Lang";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>\nSteffen Schuldenzucker <steffen.schuldenzucker@googlemail.com>\nAlex Lang <lang@tsurucapital.com>";
      homepage = "http://jaspervdj.be/websockets";
      url = "";
      synopsis = "A sensible and clean way to write WebSocket-capable servers in Haskell.";
      description = "This library allows you to write WebSocket-capable servers.\n\nAn example server:\n<https://github.com/jaspervdj/websockets/blob/master/example/server.lhs>\n\nAn example client:\n<https://github.com/jaspervdj/websockets/blob/master/example/client.hs>\n\nSee also:\n\n* The specification of the WebSocket protocol:\n<http://www.whatwg.org/specs/web-socket-protocol/>\n\n* The JavaScript API for dealing with WebSockets:\n<http://www.w3.org/TR/websockets/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.SHA)
          (hsPkgs.text)
          (hsPkgs.entropy)
        ];
      };
      tests = {
        "websockets-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.random)
            (hsPkgs.SHA)
            (hsPkgs.text)
            (hsPkgs.entropy)
          ];
        };
      };
    };
  }