{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GPX";
          version = "0.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Tony Morris";
        maintainer = "code@tmorris.net";
        author = "Tony Morris";
        homepage = "http://code.google.com/p/geo-gpx/";
        url = "";
        synopsis = "Parse GPX files";
        description = "Parse GPS Exchange (GPX) files using HXT into data structures.";
        buildType = "Simple";
      };
      components = {
        GPX = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.hxt-extras
            hsPkgs.containers
            hsPkgs.xsd
          ];
        };
      };
    }