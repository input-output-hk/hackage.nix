{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-attoparsec";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2013 Tero Laitinen";
        maintainer = "tol@iki.fi";
        author = "Tero Laitinen";
        homepage = "https://github.com/tlaitinen/http-attoparsec";
        url = "";
        synopsis = "Attoparsec parsers for http-types.";
        description = "Attoparsec parsers for http-types.";
        buildType = "Simple";
      };
      components = {
        http-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.http-types
          ];
        };
      };
    }