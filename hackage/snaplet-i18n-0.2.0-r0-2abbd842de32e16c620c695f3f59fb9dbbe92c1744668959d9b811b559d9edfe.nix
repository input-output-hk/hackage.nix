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
      identifier = { name = "snaplet-i18n"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng,Wu";
      homepage = "https://github.com/HaskellCNOrg/snaplet-i18n";
      url = "";
      synopsis = "snaplet-i18n";
      description = "A light weight i18n snaplet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-loader-static" or (errorHandler.buildDepError "snap-loader-static"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-loader-static" or (errorHandler.buildDepError "snap-loader-static"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."snaplet-i18n" or (errorHandler.buildDepError "snaplet-i18n"))
            (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
            ];
          buildable = true;
          };
        };
      };
    }