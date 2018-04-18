{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alternative-vector";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "BSD-3";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/alternative-vector#readme";
        url = "";
        synopsis = "Use vectors instead of lists for many and some";
        description = "";
        buildType = "Simple";
      };
      components = {
        alternative-vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }