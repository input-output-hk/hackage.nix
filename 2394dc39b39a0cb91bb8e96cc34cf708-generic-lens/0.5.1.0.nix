{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generic-lens";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kiss.csongor.kiss@gmail.com";
        author = "Csongor Kiss";
        homepage = "https://github.com/kcsongor/generic-lens";
        url = "";
        synopsis = "Generic data-structure operations exposed as lenses.";
        description = "This package uses the GHC 8 Generic representation to derive various operations on data structures with a lens interface, including structural subtype relationship between records and positional indexing into arbitrary product types.";
        buildType = "Simple";
      };
      components = {
        generic-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
            hsPkgs.tagged
          ];
        };
        tests = {
          generic-lens-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.generic-lens
              hsPkgs.inspection-testing
            ];
          };
          generic-lens-test-25 = {
            depends  = [
              hsPkgs.base
              hsPkgs.generic-lens
              hsPkgs.lens
            ];
          };
          generic-lens-test-24 = {
            depends  = [
              hsPkgs.base
              hsPkgs.generic-lens
              hsPkgs.lens
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          generic-lens-bench = {
            depends  = [
              hsPkgs.generic-lens
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.lens
            ];
          };
        };
      };
    }