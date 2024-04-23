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
      identifier = { name = "maquinitas-tidal"; version = "0.2.16"; };
      license = "MIT";
      copyright = "(c) Aarón Montoya-Moraga";
      maintainer = "montoyamoraga@gmail.com";
      author = "montoyamoraga";
      homepage = "https://github.com/maquinitas/maquinitas-tidal";
      url = "";
      synopsis = "library for MIDI control of hardware";
      description = "maquinitas is a library for MIDI control of hardware";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
        ];
        buildable = true;
      };
    };
  }