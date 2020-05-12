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
      specVersion = "1.6";
      identifier = { name = "snaplet-i18n"; version = "0.0.3.1"; };
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
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-loader-dynamic" or (errorHandler.buildDepError "snap-loader-dynamic"))
          (hsPkgs."snap-loader-static" or (errorHandler.buildDepError "snap-loader-static"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }