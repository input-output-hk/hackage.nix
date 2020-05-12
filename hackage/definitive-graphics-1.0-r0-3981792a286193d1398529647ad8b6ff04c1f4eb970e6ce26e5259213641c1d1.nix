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
      identifier = { name = "definitive-graphics"; version = "1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A definitive package allowing you to open windows, read image files and render text to be displayed or saved";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."definitive-base" or (errorHandler.buildDepError "definitive-base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."definitive-parser" or (errorHandler.buildDepError "definitive-parser"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."stb-truetype" or (errorHandler.buildDepError "stb-truetype"))
          ];
        buildable = true;
        };
      };
    }