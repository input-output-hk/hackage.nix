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
      identifier = { name = "devil"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Yanhao Zhu.";
      maintainer = "Yanhao Zhu <yanhaozhu@gmail.com>";
      author = "Yanhao Zhu";
      homepage = "https://github.com/luanzhu/devil";
      url = "";
      synopsis = "A small tool to make it easier to update program managed by Angel.";
      description = "@Devil@ is a small tool to make it easier to update programs managed\nby Angel (the excellent process monitor/management tool).  Angel\nstarts processes.  Devil kills running processes when an update is detected.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "devil" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }