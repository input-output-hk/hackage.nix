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
      identifier = { name = "xmobar"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unibz.it";
      author = "Andrea Rossato";
      homepage = "http://gorgias.mine.nu/xmobar/";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar features,\nlike dynamic color management, output templates, and extensibility\nthrough plugins.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }