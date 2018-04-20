{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-hunit-adapter";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jan.stolarek@p.lodz.pl";
        author = "Jan Stolarek";
        homepage = "https://github.com/jstolarek/tasty-hunit-adapter";
        url = "";
        synopsis = "Use existing HUnit tests with tasty";
        description = "This package provides a function that converts exisiting\n<http://hackage.haskell.org/package/HUnit HUnit> tests to\na TestTree that can be used with\n<http://hackage.haskell.org/package/tasty tasty> testing\nframework. Code is adapted from\n<http://hackage.haskell.org/package/test-framework-hunit test-framework-hunit>\npackage authored by Max Bolingbroke.";
        buildType = "Simple";
      };
      components = {
        tasty-hunit-adapter = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.tasty
            hsPkgs.tasty-hunit
          ];
        };
      };
    }