{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "fast-arithmetic";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/fast-arithmetic#readme";
        url = "";
        synopsis = "Fast number-theoretic functions.";
        description = "Fast number-theoretic code with a high level of safety guaranteed by ATS.";
        buildType = "Custom";
      };
      components = {
        fast-arithmetic = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          fast-arithmetic-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.fast-arithmetic
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          fast-arithmetic-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.fast-arithmetic
              hsPkgs.criterion
            ];
          };
        };
      };
    }