{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HUnit";
          version = "1.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Dean Herington";
        homepage = "http://hunit.sourceforge.net/";
        url = "";
        synopsis = "A unit testing framework for Haskell";
        description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
        buildType = "Simple";
      };
      components = {
        HUnit = {
          depends  = [ hsPkgs.base ];
        };
      };
    }