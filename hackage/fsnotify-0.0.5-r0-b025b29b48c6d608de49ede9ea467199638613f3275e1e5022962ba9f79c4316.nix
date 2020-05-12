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
      identifier = { name = "fsnotify"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Dittmer <mark.s.dittmer@gmail.com>, Greg Weber <greg@gregweber.info>";
      author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Cross platform library for file creation, modification,\nand deletion notification.";
      description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Window, Mac,\nand Linux filesystem event notification.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if system.isLinux
          then [
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            ]
          else if system.isWindows
            then [
              (hsPkgs."Win32-notify" or (errorHandler.buildDepError "Win32-notify"))
              ]
            else (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or (errorHandler.buildDepError "hfsevents")));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."uniqueid" or (errorHandler.buildDepError "uniqueid"))
            ] ++ (if system.isLinux
            then [
              (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
              ]
            else if system.isWindows
              then [
                (hsPkgs."Win32-notify" or (errorHandler.buildDepError "Win32-notify"))
                (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
                ]
              else (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or (errorHandler.buildDepError "hfsevents")));
          buildable = true;
          };
        };
      };
    }