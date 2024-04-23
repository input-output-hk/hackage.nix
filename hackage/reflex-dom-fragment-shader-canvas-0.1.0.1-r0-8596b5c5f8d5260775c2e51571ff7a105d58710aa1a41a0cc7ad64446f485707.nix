{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reflex-dom-fragment-shader-canvas";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2018 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/reflex-dom-fragment-shader-canvas";
      url = "";
      synopsis = "A reflex-dom widget to draw on a canvas with a fragment shader program";
      description = "This simple reflex-dom widget takes a `Dynamic t Text` value representing\nthe source code of a WebGL fragment shader, and renders it to\na HTML canvas element.\n\nA live demo can be found at <https://nomeata.github.io/reflex-dom-fragment-shader-canvas/>.\n\nIt also provides possible compiler errors in another `Dynamic t Text`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
            (hsPkgs."reflex-dom-fragment-shader-canvas" or (errorHandler.buildDepError "reflex-dom-fragment-shader-canvas"))
          ];
          buildable = true;
        };
      };
    };
  }