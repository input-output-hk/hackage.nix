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
      identifier = { name = "Clipboard"; version = "2.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz `at` gmail.com";
      author = "Sævar Berg (Windows), Matthew Bekkema (X11), Daniel Díaz (Maintainer)";
      homepage = "http://haskell.org/haskellwiki/Clipboard";
      url = "";
      synopsis = "System clipboard interface.";
      description = "/Clipboard/ is a library for easily interfacing with the system clipboard with additional unicode support.\nCurrently, only in a Windows or GNU/Linux (X11) system.\n\nFor example, if you type:\n\n> $ setClipboardString \"Hello, World!\"\n\nThen you have @\\\"Hello, World!\\\"@ available to be pasted wherever you want.\n\nNow, if you type:\n\n> $ modifyClipboardString reverse\n\nYou will have @\\\"!dlroW ,olleH\\\"@ in your clipboard. So:\n\n> $ getClipboardString\n> \"!dlroW ,olleH\"\n\nThe X11 version depends on the @X11@ package, so you will need the X11 development library\navailable on your system at compile time. You can install it by @sudo apt-get install libxrandr-dev@\n(or the equivalent on your system).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isWindows
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
        buildable = true;
        };
      };
    }