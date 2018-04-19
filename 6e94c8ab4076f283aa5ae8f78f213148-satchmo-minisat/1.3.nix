{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "satchmo-minisat";
          version = "1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
        url = "";
        synopsis = "minisat driver as backend for satchmo";
        description = "this driver calls minisat (download from http://minisat.se/)\nto solve CNF-SAT constraints produced by satchmo";
        buildType = "Simple";
      };
      components = {
        satchmo-minisat = {
          depends  = [
            hsPkgs.satchmo
            hsPkgs.process
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }