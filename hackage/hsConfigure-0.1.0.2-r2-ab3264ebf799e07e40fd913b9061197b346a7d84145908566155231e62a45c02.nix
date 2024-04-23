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
      identifier = { name = "hsConfigure"; version = "0.1.0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://github.com/YoshikuniJujo/hsConfigure/wiki";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/hsConfigure-0.1.tar.gz";
      synopsis = "By using this package, you can make application configurable.";
      description = "I inspired by xmonad. Xmonad is configurable by using user's own main.\nThis package make your application configurable like xmonad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
    };
  }