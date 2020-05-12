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
      specVersion = "0";
      identifier = { name = "truelevel"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006-2008 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://wiki.cs.pdx.edu/bartforge/truelevel";
      url = "";
      synopsis = "Audio file compressor-limiter";
      description = "An audio file compressor / limiter.  This\nprogram will adjust the dynamic range of a WAVE file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "truelevel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            ];
          buildable = true;
          };
        };
      };
    }