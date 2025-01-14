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
      specVersion = "1.20";
      identifier = { name = "pandoc-stylefrommeta"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/styleFromMeta";
      url = "";
      synopsis = "Pandoc filter to customize links, images and paragraphs";
      description = "Pandoc filter to customize links, images and paragraphs\n(with restrictions). Styles are read from the metadata of the document:\nthey may reside inside the document or in a separate YAML file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "styleFromMeta" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }