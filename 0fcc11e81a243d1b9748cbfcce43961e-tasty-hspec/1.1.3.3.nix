{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-hspec";
          version = "1.1.3.3";
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
        tasty-hspec = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.hspec-core
            hsPkgs.QuickCheck
            hsPkgs.tasty
            hsPkgs.tasty-smallcheck
            hsPkgs.tasty-quickcheck
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.tagged;
        };
      };
    }