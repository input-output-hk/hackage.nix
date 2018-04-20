{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tip-lib";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danr@chalmers.se";
        author = "Dan Rosén, Nick Smallbone";
        homepage = "http://tip-org.github.io";
        url = "";
        synopsis = "tons of inductive problems - support library and tools";
        description = "This package provides a tool for processing inductive theorem proving problems in TIP format (see the homepage for details).";
        buildType = "Simple";
      };
      components = {
        tip-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.geniplate-mirror
            hsPkgs.genifunctors
            hsPkgs.split
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.array
            hsPkgs.optparse-applicative
            hsPkgs.structural-induction
          ];
        };
        exes = {
          tip = {
            depends  = [
              hsPkgs.base
              hsPkgs.tip-lib
              hsPkgs.pretty
              hsPkgs.filepath
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }