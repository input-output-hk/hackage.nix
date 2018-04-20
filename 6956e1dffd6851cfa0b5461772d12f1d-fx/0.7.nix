{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fx";
          version = "0.7";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/fx";
        url = "";
        synopsis = "Horizontally composable effects";
        description = "This library provides for the horizontal composition of effects,\nserving as an alternative\nto the monad transformers stacking composition.\nIt is expected to be faster, but no comparison has been performed yet.";
        buildType = "Simple";
      };
      components = {
        fx = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }