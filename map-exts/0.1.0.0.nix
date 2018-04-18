{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "map-exts";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Elsen, Inc";
        maintainer = "cooper.charles.m@gmail.com";
        author = "Charles Cooper";
        homepage = "http://github.com/elsen-trading/map-extensions#readme";
        url = "";
        synopsis = "Extensions for Data.Map";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        map-exts = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
            ];
          };
          titanic-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.cassava
              hsPkgs.bytestring
            ];
          };
        };
      };
    }