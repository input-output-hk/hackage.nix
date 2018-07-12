{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "feldspar-language";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2010, ERICSSON AB";
        maintainer = "Emil Axelsson <emax@chalmers.se>";
        author = "Functional programming group at Chalmers University of Technology";
        homepage = "http://feldspar.inf.elte.hu/feldspar/";
        url = "";
        synopsis = "A functional embedded language for DSP and parallelism";
        description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
        buildType = "Simple";
      };
      components = {
        "feldspar-language" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.QuickCheck
          ];
        };
      };
    }