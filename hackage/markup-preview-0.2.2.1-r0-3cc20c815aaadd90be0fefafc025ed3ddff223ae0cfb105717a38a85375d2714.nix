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
      specVersion = "1.8";
      identifier = { name = "markup-preview"; version = "0.2.2.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "mhitza@gmail.com";
      author = "Marius Ghita";
      homepage = "";
      url = "";
      synopsis = "A simple markup document preview (markdown, textile, reStructuredText)";
      description = "A GUI application that renders the markup documents (markdown, textile, reStructuredText) into\nHTML and presents them into a web view. It also reloads the content automatically when the source\nfile changes.\n\nChanges from 0.1.0.0:\n\n* Added command line options e.g. markup file can be specified when starting the program.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "markup-preview" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk2hs-buildtools" or (errorHandler.buildDepError "gtk2hs-buildtools"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }