{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arcgrid";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nbrk@linklevel.net";
        author = "Nikolay Burkov";
        homepage = "https://github.com/nbrk/arcgrid";
        url = "";
        synopsis = "Parse ESRI/ArcInfo (ArcGrid) raster GIS files";
        description = "A parser for ESRI/ArcInfo (ArcGrid) files. These are raster\nGIS files widely used by many geographics-related software\nto represent elevations or terrain features.";
        buildType = "Simple";
      };
      components = {
        arcgrid = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.parsec-numeric
          ];
        };
        exes = {
          arcgrid-dump = {
            depends  = [
              hsPkgs.base
              hsPkgs.arcgrid
            ];
          };
        };
      };
    }