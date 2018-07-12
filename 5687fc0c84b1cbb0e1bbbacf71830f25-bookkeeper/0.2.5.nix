{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bookkeeper";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/turingjump/bookkeeper#readme";
        url = "";
        synopsis = "Anonymous records and overloaded labels";
        description = "Please see README.md for more information and examples.";
        buildType = "Simple";
      };
      components = {
        "bookkeeper" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.type-level-sets
          ];
        };
        exes = {
          "readme" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bookkeeper
              hsPkgs.data-default-class
              hsPkgs.markdown-unlit
              hsPkgs.type-level-sets
            ];
          };
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.Glob
              hsPkgs.base
              hsPkgs.data-default-class
              hsPkgs.doctest
              hsPkgs.type-level-sets
              hsPkgs.yaml
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bookkeeper
              hsPkgs.data-default-class
              hsPkgs.hspec
              hsPkgs.type-level-sets
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bookkeeper
              hsPkgs.criterion
              hsPkgs.data-default-class
              hsPkgs.type-level-sets
            ];
          };
        };
      };
    }