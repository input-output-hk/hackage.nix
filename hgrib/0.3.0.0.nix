{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      build_examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hgrib";
          version = "0.3.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2015 Mattias Jakobsson";
        maintainer = "mjakob422@gmail.com";
        author = "Mattias Jakobsson";
        homepage = "https://github.com/mjakob/hgrib";
        url = "";
        synopsis = "Unofficial bindings for GRIB API";
        description = "Unofficial bindings to ECMWF's GRIB API library for reading WMO\nFM-92 GRIB edition 1 and edition 2 messages.";
        buildType = "Simple";
      };
      components = {
        hgrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
          libs = [ pkgs.grib_api ];
        };
        exes = {
          get = {
            depends  = [
              hsPkgs.base
              hsPkgs.hgrib
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hgrib
              hsPkgs.hspec
            ];
          };
        };
      };
    }