{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oeis";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Interface to the Online Encyclopedia of Integer Sequences (OEIS)";
        description = "Interface to the Online Encyclopedia of Integer Sequences (OEIS). See\n<http://oeis.org/>.";
        buildType = "Custom";
      };
      components = {
        oeis = {
          depends  = [
            hsPkgs.HTTP
            hsPkgs.base
            hsPkgs.network
          ];
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.oeis
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }