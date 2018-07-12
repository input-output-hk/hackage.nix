{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Konf";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "self@gkayaalp.com";
        author = "Göktuğ Kayaalp";
        homepage = "http://www.gkayaalp.com/p/konf.html";
        url = "";
        synopsis = "A configuration language and a parser.";
        description = "Konf is a minimal konfiguration language, and ``Text.Konf'' is an implementation of this language.";
        buildType = "Simple";
      };
      components = {
        "Konf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
      };
    }