{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regions-mtl";
          version = "0.3.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2011 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "https://github.com/basvandijk/regions-mtl/";
        url = "";
        synopsis = "mtl instances for the RegionT monad transformer";
        description = "";
        buildType = "Simple";
      };
      components = {
        regions-mtl = {
          depends  = [
            hsPkgs.base-unicode-symbols
            hsPkgs.mtl
            hsPkgs.regions
          ];
        };
      };
    }