{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "diagrams-qrcode";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2014 Prowdsponsor <opensource@prowdsponsor.com>";
        maintainer = "Felipe Lessa <felipe.lessa@prowdsponsor.com>";
        author = "Felipe Lessa <felipe.lessa@prowdsponsor.com>";
        homepage = "https://github.com/prowdsponsor/diagrams-qrcode";
        url = "";
        synopsis = "Draw QR codes to SVG, PNG, PDF or PS files.";
        description = "This library is able to draw diagrams of QR codes using the\n@diagrams@ library.  In order to create the QR code itself, you\nmay use either the @haskell-qrencode@ library or @qrcode@\nlibrary, both are supported.  In order to draw and save the\ndiagram to a file, we suggest using either the @diagrams-svg@\nlibrary (pure Haskell, fast, SVG output only) or the\n@diagrams-cairo@ library (requires Cairo, supports many\ndifferent output targets, including SVG, PNG, PDF, PS and\ndirectly onto a GUI).\n\nFor an example of how this library may be used, please see the\nexamples on the source code.";
        buildType = "Simple";
      };
      components = {
        diagrams-qrcode = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.colour
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
          ];
        };
      };
    }