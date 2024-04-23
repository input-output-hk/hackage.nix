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
      identifier = { name = "sounddelay"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://github.com/BartMassey/sounddelay";
      url = "";
      synopsis = "Audio delay line";
      description = "An audio file delay line for WAVE files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "delay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
          ];
          buildable = true;
        };
      };
    };
  }