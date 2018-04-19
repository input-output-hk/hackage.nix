{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regions-monadsfd";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Monads-fd instances for the RegionT monad transformer";
        description = "";
        buildType = "Simple";
      };
      components = {
        regions-monadsfd = {
          depends  = [
            hsPkgs.unicode-symbols
            hsPkgs.transformers
            hsPkgs.regions
            hsPkgs.monads-fd
          ];
        };
      };
    }