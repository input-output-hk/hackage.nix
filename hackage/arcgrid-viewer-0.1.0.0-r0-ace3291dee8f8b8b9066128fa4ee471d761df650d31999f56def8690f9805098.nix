{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "arcgrid-viewer";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nbrk@linklevel.net";
      author = "Nikolay Burkov";
      homepage = "https://github.com/nbrk/arcgrid-viewer";
      url = "";
      synopsis = "Simple viewer for ESRI/ArcInfo (ArcGrid) geospatial data";
      description = "A simple viewer for ESRI/ArcInfo (ArcGrid) files. Users\ncan pan, zoom and rotate the rendered dataset.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "arcgrid-viewer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.arcgrid)
            (hsPkgs.gloss)
          ];
        };
      };
    };
  }