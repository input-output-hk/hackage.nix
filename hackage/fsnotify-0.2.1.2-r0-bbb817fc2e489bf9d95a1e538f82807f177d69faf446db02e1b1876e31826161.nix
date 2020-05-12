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
      identifier = { name = "fsnotify"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>, Roman Cheplyaka <roma@ro-che.info>";
      author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
      homepage = "https://github.com/haskell-fswatch/hfsnotify";
      url = "";
      synopsis = "Cross platform library for file change notification.";
      description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Windows, Mac,\nand Linux filesystem event notification.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
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
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }