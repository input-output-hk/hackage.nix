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
      identifier = { name = "soundgen"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luca_ciciriello@hotmail.com";
      author = "Luca Ciciriello";
      homepage = "";
      url = "";
      synopsis = "sound generator";
      description = "Simple tone generator. You can decide the tone frequency and duration";
      buildType = "Simple";
      };
    components = {
      exes = {
        "soundgen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }