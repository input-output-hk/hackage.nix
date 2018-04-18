{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "som";
          version = "7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Amy de Buitléir 2010-2012";
        maintainer = "amy@nualeargais.ie";
        author = "Amy de Buitléir";
        homepage = "";
        url = "";
        synopsis = "Self-Organising Maps";
        description = "A Kohonen Self-organising Map (SOM) maps input patterns\nonto a regular grid (usually two-dimensional) where each\nnode in the grid is a model of the input data, and does\nso using a method which ensures that any topological\nrelationships within the input data are also represented\nin the grid. This implementation supports the use of\nnon-numeric patterns.\n\nIn layman's terms, a SOM can be useful when you you want\nto discover the underlying structure of some data.\n\nThe userguide is available at\n<https://github.com/mhwombat/som/wiki>.";
        buildType = "Simple";
      };
      components = {
        som = {
          depends  = [
            hsPkgs.base
            hsPkgs.grid
            hsPkgs.MonadRandom
          ];
        };
        tests = {
          som-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.som
              hsPkgs.grid
              hsPkgs.MonadRandom
              hsPkgs.random
            ];
          };
        };
      };
    }