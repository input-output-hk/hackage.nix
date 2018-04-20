{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hahp";
          version = "0.1.2";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "yves+hackage@dubronetwork.fr, jean-pierre+git@prunetwork.fr";
        author = "Yves Dubromelle, Jean-Pierre PRUNARET";
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