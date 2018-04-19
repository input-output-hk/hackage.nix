{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "decimal-arithmetic";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "© 2016 Robert Leslie";
        maintainer = "Rob Leslie <rob@mars.org>";
        author = "Rob Leslie <rob@mars.org>";
        homepage = "https://github.com/verement/decimal-arithmetic#readme";
        url = "";
        synopsis = "An implementation of Mike Cowlishaw's\nGeneral Decimal Arithmetic Specification";
        description = "This package provides an implementation of the General\nDecimal Arithmetic Specification by Mike Cowlishaw.\n\nFor details, see <http://speleotrove.com/decimal/>";
        buildType = "Simple";
      };
      components = {
        decimal-arithmetic = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          decimal-arithmetic-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.decimal-arithmetic
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }