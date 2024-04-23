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
      specVersion = "1.10";
      identifier = { name = "hdaemonize"; version = "0.5.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Bornstein <jeremy@jeremy.org>";
      author = "Anton Tayanovskyy, Fred Ross, Lana Black";
      homepage = "http://github.com/unprolix/hdaemonize";
      url = "";
      synopsis = "Library to handle the details of writing daemons for UNIX";
      description = "Provides functions that help writing better UNIX daemons,\ndaemonize and serviced/serviced': daemonize does what\na daemon should do (forking and closing descriptors),\nwhile serviced does that and more (syslog interface,\nPID file writing, start-stop-restart command line\nhandling, dropping privileges).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }