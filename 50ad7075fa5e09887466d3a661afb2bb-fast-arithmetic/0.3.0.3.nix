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
          version = "0.3.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/fast-arithmetic#readme";
        url = "";
        synopsis = "Fast functions on integers.";
        description = "Fast functions for number theory and combinatorics with a high level of safety guaranteed by [ATS](http://www.ats-lang.org/). This package also provides a\n'Storable' instance for GMP's @mpz@ type.";
        buildType = "Custom";
      };
      components = {
        "fast-arithmetic" = {
          depends  = if compiler.isGhc && compiler.version.lt "7.10"
            then [
              hsPkgs.base
              hsPkgs.composition-prelude
              hsPkgs.recursion-schemes
              hsPkgs.foundation
              hsPkgs.memory
            ]
            else [
              hsPkgs.base
              hsPkgs.composition-prelude
              hsPkgs.recursion-schemes
            ];
        };
        tests = {
          "fast-arithmetic-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fast-arithmetic
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.arithmoi
              hsPkgs.combinat
            ];
          };
        };
        benchmarks = {
          "fast-arithmetic-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fast-arithmetic
              hsPkgs.criterion
              hsPkgs.arithmoi
              hsPkgs.combinat
            ];
          };
        };
      };
    }