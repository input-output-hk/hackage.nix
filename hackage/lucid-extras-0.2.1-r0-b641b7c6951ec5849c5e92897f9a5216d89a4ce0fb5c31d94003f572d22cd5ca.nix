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
      identifier = { name = "lucid-extras"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marco Zocca <ocramz fripost org>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/diffusionkinetics/open/lucid-extras";
      url = "";
      synopsis = "Generate more HTML with Lucid";
      description = "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Email.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "site-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."lucid-extras" or (errorHandler.buildDepError "lucid-extras"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            ];
          buildable = true;
          };
        };
      };
    }