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
      identifier = { name = "tidal-link"; version = "1.2.0"; };
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
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."iphlpapi" or (errorHandler.sysDepError "iphlpapi"))
          (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
          (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "9.4")) (if system.isOsx
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
        buildable = true;
      };
      exes = {
        "tidal-linktest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tidal-link" or (errorHandler.buildDepError "tidal-link"))
          ];
          buildable = true;
        };
      };
    };
  }