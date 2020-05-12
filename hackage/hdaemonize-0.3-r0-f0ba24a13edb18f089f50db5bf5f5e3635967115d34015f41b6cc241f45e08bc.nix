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
      identifier = { name = "hdaemonize"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Tayanovskyy <name.surname@gmail.com>";
      author = "Anton Tayanovskyy";
      homepage = "http://github.com/toyvo/hdaemonize/tree/master";
      url = "";
      synopsis = "utilities for UNIX daemon writing";
      description = "Provides two functions that help writing better UNIX daemons,\ndaemonize and serviced: daemonize does what a daemon should do\n(forking and closing descriptors), while serviced does that and\nmore (syslog interface, PID file writing, start-stop-restart\ncommand line handling, dropping privileges).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }