{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "satchmo-funsat";
          version = "1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
        url = "";
        synopsis = "funsat driver as backend for satchmo";
        description = "this driver calls funsat (download from hackage)\nto solve CNF-SAT constraints produced by satchmo";
        buildType = "Simple";
      };
      components = {
        satchmo-funsat = {
          depends  = [
            hsPkgs.satchmo
            hsPkgs.funsat
            hsPkgs.parse-dimacs
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }