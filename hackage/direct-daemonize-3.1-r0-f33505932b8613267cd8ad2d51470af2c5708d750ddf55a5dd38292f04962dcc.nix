{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "direct-daemonize";
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "ireney.knapp@gmail.com";
      author = "Irene Knapp <ireney.knapp@gmail.com>";
      homepage = "http://dankna.com/software/";
      url = "";
      synopsis = "Library to switch to daemon mode using built-in OS facilities.";
      description = "This package is a wrapper around the daemon() function on BSD-like Unices,\nincluding Mac OS X and glibc-based Linux distributions.  It does not function\non other systems.\n\nVersion 3.1 adds the ability to do something after forking but before\ndropping privileges.  It also no longer uses the system-provided daemon()\nfunction, which is highly unfortunate but necessary with the RTS's use of\nper-process timers.\n\nVersion 3.0.0.1 updates this documentation to be properly broken into\nparagraphs.\n\nVersion 3.0 cleans up the parameters structure.\n\nVersion 2.0 fixes compatibility problems with the threaded GHC runtime.\nDoing this required two non-backwards-compatible API changes.  First, the\ndaemonize function now takes an action to perform as a daemon, and never\nreturns.  Second, the functionality of closing all open files has been\nremoved, as it caused crashes.  As a substitute, the option of closing only\nthe three standard streams has been added and made the default.\n\nVersion 1.0 was the initial release.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
        ];
      };
    };
  }