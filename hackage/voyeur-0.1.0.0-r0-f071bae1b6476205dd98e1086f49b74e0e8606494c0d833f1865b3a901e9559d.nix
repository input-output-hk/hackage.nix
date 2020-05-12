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
      specVersion = "1.18";
      identifier = { name = "voyeur"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Seth Fowler";
      maintainer = "Seth Fowler <mark.seth.fowler@gmail.com>";
      author = "Seth Fowler <mark.seth.fowler@gmail.com>";
      homepage = "https://github.com/sethfowler/hslibvoyeur";
      url = "";
      synopsis = "Haskell bindings for libvoyeur";
      description = "Haskell bindings for libvoyeur, a library for observing the private\nactivities of child processes.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }