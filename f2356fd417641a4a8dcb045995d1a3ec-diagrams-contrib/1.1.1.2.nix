{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-contrib";
          version = "1.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Various; see individual modules";
        author = "Various";
        homepage = "http://projects.haskell.org/diagrams/";
        url = "";
        synopsis = "Collection of user contributions to diagrams EDSL";
        description = "A collection of user contributions for diagrams,\nan embedded domain-specific language for generation\nof vector graphics.";
        buildType = "Simple";
      };
      components = {
        diagrams-contrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.split
            hsPkgs.vector-space
            hsPkgs.vector-space-points
            hsPkgs.colour
            hsPkgs.split
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.arithmoi
            hsPkgs.lens
            hsPkgs.force-layout
            hsPkgs.data-default
            hsPkgs.MonadRandom
            hsPkgs.circle-packing
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.data-default-class
            hsPkgs.semigroups
          ];
        };
        tests = {
          turtle-tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.base
              hsPkgs.diagrams-lib
            ];
          };
        };
      };
    }