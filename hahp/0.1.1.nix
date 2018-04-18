{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hahp";
          version = "0.1.1";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "yves+hackage@dubronetwork.fr";
        author = "Yves Dubromelle";
        homepage = "";
        url = "";
        synopsis = "Analytic Hierarchy Process";
        description = "Analytic Hierarchy Process implementation.";
        buildType = "Simple";
      };
      components = {
        hahp = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hmatrix
            hsPkgs.parallel
            hsPkgs.time
          ];
        };
        exes = {
          hahp-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hahp
              hsPkgs.time
            ];
          };
        };
      };
    }