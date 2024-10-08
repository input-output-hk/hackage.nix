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
      identifier = { name = "system-time-monotonic"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/haskell-system-time-monotonic";
      url = "";
      synopsis = "Simple library for using the system's monotonic clock";
      description = "Simple library for using the system's monotonic clock.  This library is\ngeared toward programs that need to run for long periods of time.  It does\nnot (necessarily) provide high-resolution timing.\n\n* On Windows, this uses @GetTickCount64@, but falls back to\n@GetTickCount@ if it is not available.  @GetTickCount64@ was\nintroduced in Windows Vista and Windows Server 2008.\nSupport for @QueryPerformanceCounter@ is also available, but is not\nused by default, as it is less accurate in the long run than\n@GetTickCount@.\n\n* On Linux, this uses @clock_gettime@ with @CLOCK_MONOTONIC@.\n\nRelease history:\n\n[0.2] Update driver API (@SystemClock@) to prevent cumulative precision loss.\n\n[0.1] Initial release.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }