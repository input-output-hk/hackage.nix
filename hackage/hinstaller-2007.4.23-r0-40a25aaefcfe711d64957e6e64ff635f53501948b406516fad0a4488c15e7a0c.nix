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
      specVersion = "0";
      identifier = { name = "hinstaller"; version = "2007.4.23"; };
      license = "LicenseRef-LGPL";
      copyright = "Matthew Sackman";
      maintainer = "matthew@wellquite.org";
      author = "Matthew Sackman";
      homepage = "http://www.wellquite.org/hinstaller/";
      url = "";
      synopsis = "Installer wrapper for Haskell applications";
      description = "This module allows you to incorporate arbitrary files into a haskell module\nduring compilation. The files are then available to you through functions\nwhich allows you to write installer-type applications which write out the\nfiles when run. Thus this can be considered in the same model as Java .jar\nfiles or executable zip or other file archives.\n\nNote that the current implementation is now reasonably efficient. However,\neither use -fvia-C which will take care of all compilation for you (but\nwill be slow) or use -fasm which will probably fail at the linking stage.\nCompile the generated .c files and manually link together to complete the\ninstallation. On any non-trivial sized file, you may need to increase GHC's\nstack with +RTS -K32M -RTS to avoid stack overflows.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }