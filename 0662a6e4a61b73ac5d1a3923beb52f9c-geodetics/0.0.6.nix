{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "geodetics";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Paul Johnson 2015.";
        maintainer = "Paul Johnson <paul@cogito.org.uk>";
        author = "Paul Johnson <paul@cogito.org.uk>";
        homepage = "https://github.com/PaulJohnson/geodetics";
        url = "";
        synopsis = "Terrestrial coordinate systems and geodetic calculations.";
        description = "Precise geographical coordinates (latitude & longitude), with conversion between\ndifferent reference frames and projections.\n\nCertain distinguished reference frames and grids are given distinct\ntypes so that coordinates expressed within them cannot be confused with\nfrom coordinates in other frames.";
        buildType = "Simple";
      };
      components = {
        geodetics = {
          depends  = [
            hsPkgs.base
            hsPkgs.dimensional
            hsPkgs.array
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          GeodeticTest = {
            depends  = [
              hsPkgs.geodetics
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.dimensional
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.array
              hsPkgs.checkers
            ];
          };
        };
      };
    }