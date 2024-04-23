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
      identifier = { name = "web-page"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <ertesx@gmx.de>";
      author = "Ertugrul Söylemez <ertesx@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "Monoidally construct web pages";
      description = "This package combines blaze-html, clay, jmacro and web-routes into a\nframework-agnostic library to generate web pages dynamically from\nindividual components.  It is inspired by Yesod's widgets, but is\nmore general, more powerful and can be used with other web\nframeworks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
        ];
        buildable = true;
      };
      exes = {
        "web-page-test" = {
          depends = pkgs.lib.optionals (flags.testprogram) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."web-page" or (errorHandler.buildDepError "web-page"))
          ];
          buildable = if flags.testprogram then true else false;
        };
      };
    };
  }