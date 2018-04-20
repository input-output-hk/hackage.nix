{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cf";
          version = "0.4.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mitchell.v.riley@gmail.com";
        author = "Mitchell Riley";
        homepage = "http://github.com/mvr/cf";
        url = "";
        synopsis = "Exact real arithmetic using continued fractions";
        description = "Continued fraction arithmetic using Gosper's algorithm for the\nbasic operations, and Vuillemin and Lester's techniques for\ntranscendental functions.";
        buildType = "Simple";
      };
      components = {
        cf = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.cf
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }