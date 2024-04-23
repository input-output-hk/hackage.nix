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
      specVersion = "1.2";
      identifier = { name = "mpdmate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Martin <martine@danga.com>";
      author = "Evan Martin";
      homepage = "http://neugierig.org/software/darcs/powermate/";
      url = "";
      synopsis = "MPD/PowerMate executable";
      description = "This library exploits the PowerMate bindings\nto provide PowerMate+MPD utility.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mpdmate" = {
          depends = [
            (hsPkgs."powermate" or (errorHandler.buildDepError "powermate"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }