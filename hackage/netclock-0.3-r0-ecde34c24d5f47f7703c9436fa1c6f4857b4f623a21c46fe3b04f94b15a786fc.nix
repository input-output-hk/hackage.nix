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
      specVersion = "1.4";
      identifier = { name = "netclock"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "netclock@mail.slab.org";
      author = "Alex McLean";
      homepage = "http://netclock.slab.org/";
      url = "";
      synopsis = "Netclock protocol";
      description = "Implementation of the Netclock protocol for sharing clocks in music performance     ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          ];
        buildable = true;
        };
      };
    }