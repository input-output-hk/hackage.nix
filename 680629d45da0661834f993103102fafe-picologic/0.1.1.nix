{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      shell = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "picologic";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2014 Stephen Diehl";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/sdiehl/picologic";
        url = "";
        synopsis = "Utilities for symbolic predicate logic expressions";
        description = "`picologic` provides symbolic logic expressions that can be integrated with the `picosat` solver.";
        buildType = "Simple";
      };
      components = {
        picologic = {
          depends  = [
            hsPkgs.base
            hsPkgs.picosat
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.parsec
          ];
        };
        exes = {
          picologic = {
            depends  = pkgs.lib.optionals _flags.shell [
              hsPkgs.base
              hsPkgs.picosat
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.haskeline
            ];
          };
        };
      };
    }