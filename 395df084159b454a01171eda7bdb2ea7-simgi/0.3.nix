{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "simgi";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2009-2010 Markus Dittrich, NRBSC & CMU";
        maintainer = "<haskelladdict@users.sourceforge.net>";
        author = "<haskelladdict@users.sourceforge.net>";
        homepage = "http://simgi.sourceforge.net/";
        url = "";
        synopsis = "stochastic simulation engine";
        description = "simgi is a stochastic simulation engine to model\nmolecular systems using Gillespie's method.";
        buildType = "Simple";
      };
      components = {
        exes = {
          simgi = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.haskell98
              hsPkgs.random
              hsPkgs.mersenne-random-pure64
            ];
          };
        };
      };
    }