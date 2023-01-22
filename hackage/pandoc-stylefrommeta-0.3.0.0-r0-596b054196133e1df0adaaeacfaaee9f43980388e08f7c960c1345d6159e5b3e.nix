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
    flags = { pandoc2 = true; pandocusetext = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "pandoc-stylefrommeta"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2023 Alexey Radkov";
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
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ] ++ (pkgs.lib).optionals (flags.pandoc2) [
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]) ++ (if flags.pandocusetext
            then [
              (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
              (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
              ]
            else [ (hsPkgs."extra" or (errorHandler.buildDepError "extra")) ]);
          buildable = true;
          };
        };
      };
    }