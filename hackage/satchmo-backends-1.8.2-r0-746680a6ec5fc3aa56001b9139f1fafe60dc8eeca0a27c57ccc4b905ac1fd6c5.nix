{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "satchmo-backends";
        version = "1.8.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "driver for external satchmo backends";
      description = "Calls external solvers for (QBF-)CNF-SAT constraints produced by satchmo.\nThese solvers must be installed separately.\nNote: the author and license of this package has no correlation\nwith the authors and licenses of the individual solvers.\nminisat (download from http://minisat.se/ )\nquantor (download from http://fmv.jku.at/quantor/ )\nqube    (download from http://www.star.dist.unige.it/~qube/ )";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.satchmo)
          (hsPkgs.process)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
        ];
      };
    };
  }