{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sunroof-examples";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 The University of Kansas";
        maintainer = "Jan Bracker <jbra@informatik.uni-kiel.de>";
        author = "Andrew Gill <andygill@ku.edu>, Jan Bracker <jbra@informatik.uni-kiel.de>";
        homepage = "https://github.com/ku-fpg/sunroof-examples";
        url = "";
        synopsis = "Tests for Sunroof";
        description = "Example applications of the sunroof-compiler and sunroof-server package.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "sunroof-browser-info" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sunroof-compiler
              hsPkgs.sunroof-server
              hsPkgs.Boolean
              hsPkgs.semigroups
              hsPkgs.data-default
            ];
          };
          "sunroof-canvas" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sunroof-compiler
              hsPkgs.sunroof-server
              hsPkgs.Boolean
              hsPkgs.data-default
            ];
          };
          "sunroof-clock" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sunroof-compiler
              hsPkgs.Boolean
              hsPkgs.data-default
              hsPkgs.filepath
            ];
          };
          "sunroof-fib" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sunroof-compiler
              hsPkgs.sunroof-server
              hsPkgs.Boolean
              hsPkgs.semigroups
              hsPkgs.data-default
            ];
          };
          "sunroof-unit" = {
            depends  = [
              hsPkgs.sunroof-compiler
              hsPkgs.sunroof-server
              hsPkgs.Boolean
              hsPkgs.data-default
              hsPkgs.semigroups
              hsPkgs.base
              hsPkgs.parallel-io
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.random
            ];
          };
          "sunroof-inplace-shaker" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.shake
            ];
          };
        };
      };
    }