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
    flags = { testprogram = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "web-page"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <ertesx@gmx.de>";
      author = "Ertugrul Söylemez <ertesx@gmx.de>";
      homepage = "http://hub.darcs.net/ertes/web-page";
      url = "";
      synopsis = "Monoidally construct web pages";
      description = "This package combines blaze-html, clay and jmacro into a\nframework-agnostic library to generate web pages dynamically from\nindividual components.  It is inspired by Yesod's widgets, but is\nmore general, more powerful and can be used with other web\nframeworks.\n\nSee the @README.md@ file for a full list of features and a quick\nintroduction.  More detailed documentation can be found in the\nindividual modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      exes = {
        "web-page-test" = {
          depends = (pkgs.lib).optionals (flags.testprogram) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."web-page" or (errorHandler.buildDepError "web-page"))
            ];
          buildable = if flags.testprogram then true else false;
          };
        };
      };
    }