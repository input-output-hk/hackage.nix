{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fake";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Doug Beardsley, Formation Inc.";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "https://github.com/mightybyte/fake";
        url = "";
        synopsis = "Randomly generated fake data";
        description = "QuickCheck generates completely random data for the\npurposes of test and catching corner cases.  The fake\npackage provides tools for generating data that looks\nplausibly real.";
        buildType = "Simple";
      };
      components = {
        fake = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.generics-sop
            hsPkgs.random
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.random
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }