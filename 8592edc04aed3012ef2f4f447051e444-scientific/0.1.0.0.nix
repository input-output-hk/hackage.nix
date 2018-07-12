{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scientific";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "https://github.com/basvandijk/scientific";
        url = "";
        synopsis = "Arbitrary-precision floating-point numbers represented using scientific notation";
        description = "A @Scientific@ number is an arbitrary-precision floating-point number\nrepresented using scientific notation.\n\nA scientific number with 'coefficient' @c@ and\n'base10Exponent' @e@ corresponds to the\n'Fractional' number: @'fromInteger' c * 10 '^^' e@\n\nIts primary use-case is to serve as the target of\nparsing floating point numbers. Since the textual\nrepresentation of floating point numbers use\nscientific notation they can be efficiently\nparsed to a @Scientific@ number.";
        buildType = "Simple";
      };
      components = {
        "scientific" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.text
            hsPkgs.hashable
          ];
        };
        tests = {
          "test-scientific" = {
            depends  = [
              hsPkgs.scientific
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.smallcheck
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          "bench-scientific" = {
            depends  = [
              hsPkgs.scientific
              hsPkgs.base
              hsPkgs.criterion
            ];
          };
        };
      };
    }