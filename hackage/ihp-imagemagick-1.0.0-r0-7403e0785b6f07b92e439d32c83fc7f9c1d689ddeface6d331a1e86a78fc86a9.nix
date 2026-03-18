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
      specVersion = "2.2";
      identifier = { name = "ihp-imagemagick"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "support@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "";
      url = "";
      synopsis = "ImageMagick preprocessing for IHP file uploads";
      description = "Preprocess uploaded images with ImageMagick in IHP apps";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
        ];
        buildable = true;
      };
    };
  }