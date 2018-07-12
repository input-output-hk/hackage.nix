{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wavefront";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "https://github.com/phaazon/wavefront";
        url = "";
        synopsis = "Wavefront OBJ loader";
        description = "A Wavefront OBJ loader. Currently supports polygonal information. More could\nbe added if needed (like curves and surface) if people contribute. Feel free\nto help!";
        buildType = "Simple";
      };
      components = {
        "wavefront" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }