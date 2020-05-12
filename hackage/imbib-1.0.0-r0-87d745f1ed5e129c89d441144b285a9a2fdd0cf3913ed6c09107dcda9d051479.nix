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
      identifier = { name = "imbib"; version = "1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Minimalistic reference manager.";
      description = "The tool to facilitates the workflow: webbrowser -> bibtex file -> directory of .pdfs. The design is minimalistic (eg. no editor is included; emacs can be fired up by double right-clicking an entry).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "imbib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bibtex" or (errorHandler.buildDepError "bibtex"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gnomevfs" or (errorHandler.buildDepError "gnomevfs"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            ];
          buildable = true;
          };
        "imbibatch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bibtex" or (errorHandler.buildDepError "bibtex"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            ];
          buildable = true;
          };
        };
      };
    }