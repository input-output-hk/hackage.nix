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
      specVersion = "2.4";
      identifier = { name = "tidal-link"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Pierre Krafft and contributors, 2021";
      maintainer = "Pierre Krafft <kpierre@outlook.com>, Alex McLean <alex@slab.org>";
      author = "Pierre Krafft";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Ableton Link integration for Tidal";
      description = "Ableton Link integration for Tidal, to let Tidal sync with external clocks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = if system.isWindows
          then if compiler.isGhc && compiler.version.ge "9.4.0"
            then [
              (pkgs."c++" or (errorHandler.sysDepError "c++"))
              (pkgs."iphlpapi" or (errorHandler.sysDepError "iphlpapi"))
              (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
              (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
            ]
            else [
              (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
              (pkgs."iphlpapi" or (errorHandler.sysDepError "iphlpapi"))
              (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
              (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
            ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
      };
      exes = {
        "linktest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tidal-link" or (errorHandler.buildDepError "tidal-link"))
          ];
          buildable = true;
        };
      };
    };
  }