{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.1.3";
        identifier = {
          name = "sat";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "copyleft, share whatever you modify and any derivatives as well, including modules, additions and everything else.";
        maintainer = "andrii.z@gmail.com";
        author = "Zvorygin, Andrii (Loki)";
        homepage = "http://tcana.info/sat.html";
        url = "http://lokiworld.org/skamSELypla/sat";
        synopsis = "CNF SATisfier";
        description = "CNF(Clausal Normal Form) SATisfiability Solver and Generator";
        buildType = "Custom";
      };
      components = {
        exes = {
          "SATSolve" = {
            depends  = [ hsPkgs.base ];
          };
          "CNFGenerate" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }