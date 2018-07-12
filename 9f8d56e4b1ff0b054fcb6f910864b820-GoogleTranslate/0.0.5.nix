{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GoogleTranslate";
          version = "0.0.5";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2010 Andy Stewart";
        maintainer = "lazycat.manatee@gmail.com";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Interface to Google Translate API";
        description = "Interface to Google Translate API";
        buildType = "Simple";
      };
      components = {
        "GoogleTranslate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.AttoJson
            hsPkgs.download-curl
            hsPkgs.bytestring
            hsPkgs.dataenc
          ];
        };
      };
    }