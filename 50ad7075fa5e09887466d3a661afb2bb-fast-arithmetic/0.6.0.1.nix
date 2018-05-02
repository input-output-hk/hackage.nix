{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "fast-arithmetic";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/fast-arithmetic#readme";
        url = "";
        synopsis = "Fast functions on integers.";
        description = "Fast functions for number theory and combinatorics with a high level of safety guaranteed by [ATS](http://www.ats-lang.org/).";
        buildType = "Simple";
      };
      components = {
        fast-arithmetic = {
          depends  = [
            hsPkgs.base
            hsPkgs.composition-prelude
            hsPkgs.gmpint
          ];
        };
        tests = {
          fast-arithmetic-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.fast-arithmetic
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.arithmoi
              hsPkgs.combinat-compat
            ];
          };
        };
        benchmarks = {
          fast-arithmetic-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.fast-arithmetic
              hsPkgs.criterion
              hsPkgs.arithmoi
              hsPkgs.combinat-compat
            ];
          };
        };
      };
    }