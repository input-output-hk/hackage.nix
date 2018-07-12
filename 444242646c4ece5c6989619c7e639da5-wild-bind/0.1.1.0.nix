{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wild-bind";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Toshio Ito <debug.ito@gmail.com>";
        author = "Toshio Ito <debug.ito@gmail.com>";
        homepage = "https://github.com/debug-ito/wild-bind";
        url = "";
        synopsis = "Dynamic key binding framework";
        description = "Dynamic key binding framework. See <https://github.com/debug-ito/wild-bind>";
        buildType = "Simple";
      };
      components = {
        "wild-bind" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.transformers
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wild-bind
              hsPkgs.transformers
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.stm
              hsPkgs.microlens
            ];
          };
        };
      };
    }