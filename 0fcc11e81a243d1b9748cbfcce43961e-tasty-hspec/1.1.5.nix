{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "tasty-hspec";
          version = "1.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mitchellwrosen@gmail.com";
        author = "Mitchell Rosen";
        homepage = "https://github.com/mitchellwrosen/tasty-hspec";
        url = "";
        synopsis = "Hspec support for the Tasty test framework.";
        description = "This package provides a Tasty provider for Hspec test\nsuites.";
        buildType = "Simple";
      };
      components = {
        "tasty-hspec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.hspec-core
            hsPkgs.QuickCheck
            hsPkgs.tasty
            hsPkgs.tasty-smallcheck
            hsPkgs.tasty-quickcheck
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged;
        };
      };
    }