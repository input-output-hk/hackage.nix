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
      identifier = { name = "daemonize-doublefork"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "scvalex@gmail.com";
      author = "Alexandru Scvortov <scvalex@gmail.com>";
      homepage = "https://github.com/scvalex/daemonize-doublefork";
      url = "";
      synopsis = "Start background daemons by double-forking";
      description = "Start background daemons by double-forking.\n\nSee \"System.Posix.Daemon\" for documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }