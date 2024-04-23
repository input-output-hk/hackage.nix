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
      specVersion = "1.6";
      identifier = { name = "manatee-all"; version = "0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Virtual package to install all Manatee packages.";
      description = "Virtual package to install all Manatee packages, please type command `manatee` to play it. :)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."manatee-core" or (errorHandler.buildDepError "manatee-core"))
          (hsPkgs."manatee-browser" or (errorHandler.buildDepError "manatee-browser"))
          (hsPkgs."manatee-curl" or (errorHandler.buildDepError "manatee-curl"))
          (hsPkgs."manatee-editor" or (errorHandler.buildDepError "manatee-editor"))
          (hsPkgs."manatee-filemanager" or (errorHandler.buildDepError "manatee-filemanager"))
          (hsPkgs."manatee-imageviewer" or (errorHandler.buildDepError "manatee-imageviewer"))
          (hsPkgs."manatee-ircclient" or (errorHandler.buildDepError "manatee-ircclient"))
          (hsPkgs."manatee-mplayer" or (errorHandler.buildDepError "manatee-mplayer"))
          (hsPkgs."manatee-pdfviewer" or (errorHandler.buildDepError "manatee-pdfviewer"))
          (hsPkgs."manatee-processmanager" or (errorHandler.buildDepError "manatee-processmanager"))
          (hsPkgs."manatee-reader" or (errorHandler.buildDepError "manatee-reader"))
          (hsPkgs."manatee-terminal" or (errorHandler.buildDepError "manatee-terminal"))
          (hsPkgs."manatee-welcome" or (errorHandler.buildDepError "manatee-welcome"))
          (hsPkgs."manatee" or (errorHandler.buildDepError "manatee"))
        ];
        buildable = true;
      };
      exes = { "manatee-all" = { buildable = true; }; };
    };
  }