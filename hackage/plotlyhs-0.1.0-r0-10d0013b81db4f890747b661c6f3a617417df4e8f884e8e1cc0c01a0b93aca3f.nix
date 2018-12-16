{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "plotlyhs";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tanielsen@gmail.com";
      author = "Tom Nielsen";
      homepage = "https://github.com/glutamate/plotlyhs";
      url = "";
      synopsis = "Haskell bindings to Plotly.js";
      description = "Generate web-based plots with the Plotly.js library.\nFor examples, see <https://glutamate.github.io/plotlyhs/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lucid)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.microlens-th)
          (hsPkgs.microlens)
        ];
      };
      exes = {
        "test-plotly" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.plotlyhs)
            (hsPkgs.lucid)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.microlens)
          ];
        };
      };
    };
  }