{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wl-pprint-text";
          version = "1.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2007 Daan Leijen, 2010 Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "A Wadler/Leijen Pretty Printer for Text values";
        description = "A clone of wl-pprint for use with the text library.";
        buildType = "Simple";
      };
      components = {
        "wl-pprint-text" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }