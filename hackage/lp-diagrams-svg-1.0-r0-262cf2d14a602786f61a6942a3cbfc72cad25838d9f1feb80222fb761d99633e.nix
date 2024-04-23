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
    flags = { example = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "lp-diagrams-svg"; version = "1.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "SVG Backend for lp-diagrams";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lp-diagrams" or (errorHandler.buildDepError "lp-diagrams"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid-svg" or (errorHandler.buildDepError "lucid-svg"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."svg-tree" or (errorHandler.buildDepError "svg-tree"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
        ];
        buildable = true;
      };
      exes = {
        "lp-diagrams-svg-example" = {
          depends = [
            (hsPkgs."lp-diagrams-svg" or (errorHandler.buildDepError "lp-diagrams-svg"))
            (hsPkgs."lp-diagrams" or (errorHandler.buildDepError "lp-diagrams"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."FontyFruity" or (errorHandler.buildDepError "FontyFruity"))
          ];
          buildable = if flags.example then true else false;
        };
      };
    };
  }