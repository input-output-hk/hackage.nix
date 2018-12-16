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
      specVersion = "1.10";
      identifier = {
        name = "plotlyhs";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tanielsen@gmail.com";
      author = "Tom Nielsen";
      homepage = "https://github.com/diffusionkinetics/open/plotlyhs";
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
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.microlens-th)
          (hsPkgs.microlens)
        ];
      };
    };
  }