{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "test-framework-doctest";
          version = "0.2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sakariij@gmail.com";
        author = "Sakari Jokinen";
        homepage = "";
        url = "";
        synopsis = "Test.Framework wrapper for DocTest";
        description = "This package is deprecated, use Doctest`s cabal integration instead.\n\nSee: <https://github.com/sol/doctest-haskell#cabal-integration>";
        buildType = "Simple";
      };
      components = {
        test-framework-doctest = {
          depends  = [
            hsPkgs.base
            hsPkgs.doctest
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-doctest
            ];
          };
        };
      };
    }