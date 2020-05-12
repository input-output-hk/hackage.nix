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
    flags = {
      small_base = true;
      with_xft = false;
      with_utf8 = true;
      with_inotify = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmobar"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/~arossato/xmobar";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar features,\nlike dynamic color management, output templates, and extensibility\nthrough plugins.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = ((([
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ])) ++ (pkgs.lib).optionals (flags.with_xft) [
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."X11-xft" or (errorHandler.buildDepError "X11-xft"))
            ]) ++ (pkgs.lib).optional (flags.with_utf8 && (compiler.isGhc && (compiler.version).lt "6.12.1")) (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.with_inotify) (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"));
          buildable = true;
          };
        };
      };
    }