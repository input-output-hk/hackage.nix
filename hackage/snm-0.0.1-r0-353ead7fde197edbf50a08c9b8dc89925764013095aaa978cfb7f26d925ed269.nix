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
      specVersion = "1.4";
      identifier = { name = "snm"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Morrice <spoon@killersmurf.com>";
      author = "John Morrice <spoon@killersmurf.com>";
      homepage = "http://github.com/elginer/snm";
      url = "";
      synopsis = "The Simple Nice-Looking Manual Generator.";
      description = "snm allows you to write clean, web-friendly reports, user guides and manuals without having to edit fickle html.\n\nsnm allows you to structure your document in a modular fashion.\n\nsnm document sections are written in yaml and are easy to write and understand.\n\nsnm is a generator of small, valid xhtml files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
          (hsPkgs."spoonutil" or (errorHandler.buildDepError "spoonutil"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ];
        buildable = true;
        };
      exes = {
        "snm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
            (hsPkgs."spoonutil" or (errorHandler.buildDepError "spoonutil"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }