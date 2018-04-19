{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "test-framework-th-prime";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Template Haskell for test framework";
        description = "Automatically generates a Test list for\nHUnit, doctest and QuickCheck2.";
        buildType = "Simple";
      };
      components = {
        test-framework-th-prime = {
          depends  = [
            hsPkgs.base
            hsPkgs.cpphs
            hsPkgs.haskell-src-exts
            hsPkgs.template-haskell
            hsPkgs.test-framework
          ];
        };
      };
    }