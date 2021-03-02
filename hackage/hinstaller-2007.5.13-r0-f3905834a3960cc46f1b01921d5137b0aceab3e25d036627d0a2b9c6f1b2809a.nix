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
      specVersion = "1.0";
      identifier = { name = "hinstaller"; version = "2007.5.13"; };
      license = "LicenseRef-LGPL";
      copyright = "Matthew Sackman";
      maintainer = "matthew@wellquite.org";
      author = "Matthew Sackman";
      homepage = "http://www.wellquite.org/hinstaller/";
      url = "";
      synopsis = "Installer wrapper for Haskell applications";
      description = "This module allows you to incorporate arbitrary files into a haskell module\nduring compilation. The files are then available to you through functions\nwhich allows you to write installer-type applications which write out the\nfiles when run. Thus this can be considered in the same model as Java .jar\nfiles or executable zip or other file archives.\n\nThe current implementation is now reasonably efficient. However, it does\nrequire that you have a C compiler installed which can be invoked through\n@cc@.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
        buildable = true;
        };
      };
    }