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
        name = "reflex-dom-fragment-shader-canvas";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "2018 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/reflex-dom-fragment-shader-canvas";
      url = "";
      synopsis = "A reflex-dom widget to draw on a canvas with a fragment shader program";
      description = "This simple reflex-dom widget takes a @Dynamic t Text@ value representing\nthe source code of a WebGL fragment shader, and renders it to\na HTML canvas element.\n\nA live demo can be found at <https://nomeata.github.io/reflex-dom-fragment-shader-canvas/>.\n\nIt also provides possible compiler errors in another @Dynamic t Text@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.jsaddle)
          (hsPkgs.reflex-dom)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.reflex-dom)
            (hsPkgs.reflex-dom-fragment-shader-canvas)
          ];
        };
      };
    };
  }