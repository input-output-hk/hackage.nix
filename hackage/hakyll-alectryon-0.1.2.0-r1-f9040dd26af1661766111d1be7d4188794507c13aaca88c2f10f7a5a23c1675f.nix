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
      specVersion = "2.4";
      identifier = { name = "hakyll-alectryon"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "Li-yao Xia 2020";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://gitlab.com/lysxia/hakyll-alectryon";
      url = "";
      synopsis = "Hakyll extension for rendering Coq code using Alectryon";
      description = "An extension to write Literate Coq blog posts using Hakyll.\n\nhakyll-alectryon extends the Hakyll site generator with the Alectryon\ndocumentation tool for Coq.\n\nSee also the README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }