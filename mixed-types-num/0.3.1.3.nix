{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "mixed-types-num";
          version = "0.3.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2017 Michal Konecny";
        maintainer = "Michal Konecny <mikkonecny@gmail.com>";
        author = "Michal Konecny";
        homepage = "https://github.com/michalkonecny/mixed-types-num";
        url = "";
        synopsis = "Alternative Prelude with numeric and logic expressions typed bottom-up";
        description = "This package provides a version of Prelude where\nunary and binary operations such as @not@, @+@, @==@\nhave their result type derived from the parameter type(s)\nand thus supports mixed-type arithmetic and comparisons.\n\nSee module \"MixedTypesNumPrelude\" for further documentation.\n\n/Ghci 8.0.* fails when loading this package/ due to ghc bug <https://ghc.haskell.org/trac/ghc/ticket/13385#ticket 13385>.\nThis bug does not affect ghci 7.10.3 and ghci 8.2.1.";
        buildType = "Simple";
      };
      components = {
        mixed-types-num = {
          depends  = [
            hsPkgs.base
            hsPkgs.convertible
            hsPkgs.template-haskell
            hsPkgs.hspec
            hsPkgs.hspec-smallcheck
            hsPkgs.smallcheck
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.mixed-types-num
              hsPkgs.hspec
              hsPkgs.hspec-smallcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }