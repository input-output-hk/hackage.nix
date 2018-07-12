{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "simple-actors";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "brandon.m.simmons@gmail.com";
        author = "Brandon Simmons";
        homepage = "http://coder.bsimmons.name/blog/2011/05/simple-actors-a-simple-actor-model-concurrency-library/";
        url = "";
        synopsis = "A library for more structured concurrent programming, based\non the Actor Model";
        description = "simple-actors is an EDSL-style library for writing\nmore structured concurrent programs, based on the Actor\nModel. Computations are structured as \"Behaviors\" which take a\nsingle input value, perform some 'Action's, and return the\nBehavior to process the next input message it receives.\n\n/CHANGES/ 0.1 - 0.2:\n\n- documentation cleanup\n\n- updates for GHC 7.4.1";
        buildType = "Simple";
      };
      components = {
        "simple-actors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.chan-split
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.contravariant
          ];
        };
      };
    }