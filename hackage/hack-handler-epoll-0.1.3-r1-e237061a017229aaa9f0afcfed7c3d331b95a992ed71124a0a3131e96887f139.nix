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
      identifier = { name = "hack-handler-epoll"; version = "0.1.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2010 Toralf Wittner";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "https://gitlab.com/twittner/hack-handler-epoll";
      url = "";
      synopsis = "hack handler implementation using epoll";
      description = "Hack handler implemented using System.Linux.Epoll";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."epoll" or (errorHandler.buildDepError "epoll"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }