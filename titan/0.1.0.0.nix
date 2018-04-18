{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "titan";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez";
        homepage = "http://keera.co.uk";
        url = "";
        synopsis = "Testing Infrastructure for Temporal AbstractioNs";
        description = "Testing Infrastructure for Temporal AbstractioNs";
        buildType = "Simple";
      };
      components = {
        exes = {
          titan = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }