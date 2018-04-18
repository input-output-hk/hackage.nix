{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "deepzoom";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matthew Panetta, 2012";
        maintainer = "matthew@panetta.id.au";
        author = "Matthew Panetta";
        homepage = "";
        url = "";
        synopsis = "A DeepZoom image slicer.  Only known to work on 32bit Linux";
        description = "A DeepZoom image slicer";
        buildType = "Simple";
      };
      components = {
        deepzoom = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsmagick
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
      };
    }