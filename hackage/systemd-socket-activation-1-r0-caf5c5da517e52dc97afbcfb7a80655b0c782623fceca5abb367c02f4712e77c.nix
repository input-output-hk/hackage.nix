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
      specVersion = "3.0";
      identifier = { name = "systemd-socket-activation"; version = "1"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Let systemd bind the server's socket for you";
      description = "\"Socket activation\" is the a feature of systemd.\n\nhttps://www.freedesktop.org/software/systemd/man/sd_listen_fds_with_names.html\n\nWe use it for web servers, to avoid the momentary downtime\nthat otherwise occurs while restarting processes.\nBecause the socket is manged by systemd, not by our process,\nthe socket remains even while our process is down.\nRequests to the socket are queued until our process comes\nback up to respond.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }