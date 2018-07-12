{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "xml-parsec";
          version = "1.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Stephan Friedrichs <deduktionstheorem [at] web.de>";
        author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
        homepage = "http://sep07.mroot.net/";
        url = "";
        synopsis = "Parsing XML with Parsec";
        description = "Helper functions to use a Parsec-based parser for XML documents.\nThis was originally developed as part of the Barracuda\nad-hoc P2P chat client.\n\nThe Darcs repository can be found at <http://darcs.mroot.net/sep07-adhoc/>";
        buildType = "Simple";
      };
      components = {
        "xml-parsec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.HaXml
          ];
        };
      };
    }