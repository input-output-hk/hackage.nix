{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GoogleSuggest";
          version = "0.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2010 Andy Stewart";
        maintainer = "lazycat.manatee@gmail.com";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Interface to Google Suggest API";
        description = "Interface to Google Suggest API";
        buildType = "Simple";
      };
      components = {
        GoogleSuggest = {
          depends  = [
            hsPkgs.base
            hsPkgs.download-curl
            hsPkgs.containers
            hsPkgs.dataenc
            hsPkgs.utf8-string
            hsPkgs.xml
          ];
        };
      };
    }