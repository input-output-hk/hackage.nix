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
    flags = { small_base = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hslogger"; version = "1.2.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2012 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hslogger";
      url = "";
      synopsis = "Versatile logging framework";
      description = "hslogger is a logging framework for Haskell, roughly similar to\nPython's logging module.\n\nhslogger lets each log message have a priority and source be associated\nwith it.  The programmer can then define global handlers that route\nor filter messages based on the priority and source.  hslogger also\nhas a syslog handler built in.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]);
        buildable = true;
        };
      exes = {
        "runtests" = { buildable = if flags.buildtests then true else false; };
        };
      };
    }