{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "husky";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2009 Markus Dittrich";
        maintainer = "Markus Dittrich <haskelladdict@gmail.com>";
        author = "Markus Dittrich <haskelladdict@gmail.com>";
        homepage = "http://github.com/markusle/husky/tree/master";
        url = "";
        synopsis = "A simple command line calculator.";
        description = "husky is a command line calculator with a small memory\nfootprint. It can be used in a fashion similar to the\ninteractive shells of python, octave, or ruby.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "husky" = {
            depends  = [
              hsPkgs.base
              hsPkgs.readline
              hsPkgs.containers
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.time
            ];
          };
        };
      };
    }