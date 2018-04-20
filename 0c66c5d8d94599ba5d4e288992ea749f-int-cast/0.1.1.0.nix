{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "int-cast";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hvr@gnu.org";
        author = "Herbert Valerio Riedel";
        homepage = "https://github.com/hvr/int-cast";
        url = "";
        synopsis = "Checked conversions between integral types";
        description = "Provides statically or dynamically checked conversions between integral types.";
        buildType = "Simple";
      };
      components = {
        int-cast = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          int-cast-test = {
            depends  = [
              hsPkgs.int-cast
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.nats
            ];
          };
        };
      };
    }