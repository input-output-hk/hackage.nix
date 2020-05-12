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
      identifier = { name = "alsa"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki";
      maintainer = "bjorn@bringert.net, iavor.diatchki@gmail.com";
      author = "Bjorn Bringert, Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Binding to the ALSA Library API.";
      description = "This package provides access to\n\n* ALSA sequencer (MIDI support)\n\n* ALSA realtime audio signal input and output";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
        buildable = true;
        };
      };
    }