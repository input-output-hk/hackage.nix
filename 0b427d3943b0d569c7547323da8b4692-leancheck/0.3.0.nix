{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "leancheck";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Rudy Matela <rudy@matela.com.br>";
        author = "Rudy Matela <rudy@matela.com.br>";
        homepage = "https://github.com/rudymatela/leancheck#readme";
        url = "";
        synopsis = "Cholesterol-free property-based testing";
        description = "LeanCheck is a simple enumerative property-based testing library.\n\nIt works by producing *tiers* of test values,\nwhich are essentially (possibly infinite) lists\nof finite lists of same-and-increasingly-sized values.\n\nLeanCheck has \"lean\" core with only 180 lines of Haskell code\nbut provides a selection of utilitites for property testing:\ntest types (@Nat@, @Nat\\<1-7\\>@, @Word\\<1-4\\>@, @Int\\<1-4\\>@);\ntest operators (@==>@, @===@, @&&&@, @|||@);\ntype binding operators.\n\nLeanCheck API is likely to change in the near future.";
        buildType = "Simple";
      };
      components = {
        "leancheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
          "types" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
          "utils" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
          "operators" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
          "most" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
          "derive" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
          "error" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }