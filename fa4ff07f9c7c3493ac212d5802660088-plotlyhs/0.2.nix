{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plotlyhs";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tanielsen@gmail.com";
        author = "Tom Nielsen";
        homepage = "https://github.com/filopodia/open/plotlyhs";
        url = "";
        synopsis = "Haskell bindings to Plotly.js";
        description = "Generate web-based plots with the Plotly.js library.\nFor examples, see <https://glutamate.github.io/plotlyhs/>";
        buildType = "Simple";
      };
      components = {
        plotlyhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.lucid
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.microlens-th
            hsPkgs.microlens
          ];
        };
      };
    }