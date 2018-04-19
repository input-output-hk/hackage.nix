{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "feldspar-language";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2011, ERICSSON AB";
        maintainer = "Emil Axelsson <emax@chalmers.se>";
        author = "Functional programming group at Chalmers University of Technology";
        homepage = "http://feldspar.inf.elte.hu/feldspar/";
        url = "";
        synopsis = "A functional embedded language for DSP and parallelism";
        description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
        buildType = "Simple";
      };
      components = {
        feldspar-language = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-hash
            hsPkgs.data-lens
            hsPkgs.monad-par
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.patch-combinators
            hsPkgs.random
            hsPkgs.syntactic
            hsPkgs.tagged
            hsPkgs.tuple
            hsPkgs.type-level
            hsPkgs.monad-par
            hsPkgs.QuickAnnotate
          ];
        };
      };
    }