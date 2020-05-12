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
      specVersion = "1.12";
      identifier = { name = "direct-daemonize"; version = "3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "ireney.knapp@gmail.com";
      author = "Irene Knapp <ireney.knapp@gmail.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Library to switch to daemon mode using built-in OS facilities.";
      description = "This package is a wrapper around the daemon() function on BSD-like Unices,\nincluding Mac OS X and glibc-based Linux distributions.  It does not function\non other systems.\nVersion 3.0 cleans up the parameters structure.\nVersion 2.0 fixes compatibility problems with the threaded GHC runtime.\nDoing this required two non-backwards-compatible API changes.  First, the daemonize function now takes an action to perform as a daemon, and never\nreturns.  Second, the functionality of closing all open files has been\nremoved, as it caused crashes.  As a substitute, the option of closing only\nthe three standard streams has been added and made the default.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }