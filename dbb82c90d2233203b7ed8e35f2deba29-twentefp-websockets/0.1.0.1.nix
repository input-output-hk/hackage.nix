{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twentefp-websockets";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2011 Siniša Biđin\n(c) 2011-2013 Jasper Van der Jeugt\n(c) 2011 Steffen Schuldenzucker\n(c) 2011 Alex Lang";
        maintainer = "Sebastiaan la Fleur <sebastiaan.la.fleur@gmail.com>";
        author = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>\nSteffen Schuldenzucker <steffen.schuldenzucker@googlemail.com>\nAlex Lang <lang@tsurucapital.com>\nSebastiaan la Fleur <sebastiaan.la.fleur@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A fork of the popular websockets package. It is used for the practical assignments of the University of Twente. A sensible and clean way to write WebSocket-capable servers in Haskell.";
        description = "A fork of the popular websockets package. It is used for the practical assignments of the University of Twente.";
        buildType = "Simple";
      };
      components = {
        "twentefp-websockets" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.concurrent-extra
            hsPkgs.io-streams
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.random
            hsPkgs.SHA
            hsPkgs.text
            hsPkgs.entropy
          ];
        };
      };
    }