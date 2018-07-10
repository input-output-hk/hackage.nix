{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-hedgehog-coverage";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
        maintainer = "sean.chalmers@data61.csiro.au";
        author = "QFPL @ Data61";
        homepage = "";
        url = "";
        synopsis = "Coverage tracking for Hedgehog Property-Based Testing via Tasty.";
        description = "Integrates with the Tasty testing suite and Hedgehog property-based testing and allows you to keep a tally of the inputs that meet certain criteria. Providing the summary on test completion.";
        buildType = "Simple";
      };
      components = {
        tasty-hedgehog-coverage = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.tasty
            hsPkgs.tasty-hedgehog
            hsPkgs.hedgehog
            hsPkgs.wl-pprint-annotated
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.containers
          ];
        };
        tests = {
          tasty-hedgehog-coverage-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-expected-failure
              hsPkgs.hedgehog
              hsPkgs.tasty-hedgehog-coverage
            ];
          };
        };
      };
    }