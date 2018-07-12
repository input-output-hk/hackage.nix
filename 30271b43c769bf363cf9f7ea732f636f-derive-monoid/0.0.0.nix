{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "derive-monoid";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "samboosalis@gmail.com";
        author = "Spiros Boosalis";
        homepage = "https://github.com/sboosali/derive-monoid#readme";
        url = "";
        synopsis = "derive Semigroup/Monoid/IsList";
        description = "when your type can hold a list of itself, you can derive simple (but total\\/lawful) Semigroup\\/Monoid\\/IsList instances with TemplateHaskell.\n\nsee the <https://hackage.haskell.org/package/derive-monoid/docs/Derive-List.html Derive.List> for examples and documentation.\nbrowse the <https://github.com/sboosali/derive-monoid/tree/master/test/Build/Derive/List test suite> for more (buildable) examples:\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/HigherKind.hs HigherKind>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/IsList.hs IsList>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/Monoid.hs Monoid>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/Semigroup.hs Semigroup>";
        buildType = "Simple";
      };
      components = {
        "derive-monoid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.template-haskell
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.derive-monoid
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.derive-monoid
              hsPkgs.semigroups
            ];
          };
        };
      };
    }