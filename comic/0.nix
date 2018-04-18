{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "comic";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2017";
        maintainer = "oss@xkcd.com";
        author = "davean";
        homepage = "https://oss.xkcd.com/";
        url = "";
        synopsis = "A format for describing comics.";
        description = "";
        buildType = "Simple";
      };
      components = {
        comic = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
          ];
        };
      };
    }