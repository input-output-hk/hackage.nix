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
      specVersion = "1.16";
      identifier = { name = "rainbow"; version = "0.20.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://www.github.com/massysett/rainbow";
      url = "";
      synopsis = "Print text to terminal with colors and effects";
      description = "rainbow helps you print Text chunks to a terminal with colors and effects\nsuch as bold, underlining, etc. You pair each Text with a description\nof how it should appear. Rainbow works with both 8-color and 256-color\nterminals.\n\nrainbow uses the terminfo package which, in turn, needs the full C\nlibrary for ncurses installed, including the development\nheaders. Before installing terminfo, you may need to install the\nncurses headers (for instance, on Debian systems, install the\nlibncurses5-dev package.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }