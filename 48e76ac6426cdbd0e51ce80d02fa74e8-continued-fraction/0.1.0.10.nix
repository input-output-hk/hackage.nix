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
          name = "continued-fraction";
          version = "0.1.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Types and functions for working with continued fractions in Haskell";
        description = "This package provides facilities for working with both continued fractions\nand rational approximants. It uses lists internally, so it may not be suitable\nif you need large convergents.";
        buildType = "Simple";
      };
      components = {
        continued-fraction = {
          depends  = [
            hsPkgs.base
            hsPkgs.recursion-schemes
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          continued-fractions-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.continued-fraction
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          continued-fractions-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.continued-fraction
              hsPkgs.criterion
            ];
          };
        };
      };
    }