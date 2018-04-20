{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "test-framework-skip";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
        author = "Gregory Crosswhite <gcrosswhite@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Functions for conveniently marking some of the tests in a suite as being skipped.";
        description = "When tracking down a problem it can often be useful to temporarily disable\nsome or many of the tests in a suite so that one can focus on the problematic\ntests.  Rather than using a mess of comments, this module provides a\nfunction 'skip' (and a few variants) that causses a test or an entire test\nsuite to be skipped - specifically, they will still show up in the suite\nas being 'skipped', but they will not be run.";
        buildType = "Simple";
      };
      components = {
        test-framework-skip = {
          depends  = [
            hsPkgs.base
            hsPkgs.test-framework
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.test-framework-skip
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-smallcheck
            ];
          };
        };
      };
    }