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
      specVersion = "1.12";
      identifier = { name = "PortMidi-simple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "";
      url = "";
      synopsis = "Simplified PortMidi wrapper";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."PortMidi" or (errorHandler.buildDepError "PortMidi"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "channel-reader" = {
          depends = [
            (hsPkgs."PortMidi" or (errorHandler.buildDepError "PortMidi"))
            (hsPkgs."PortMidi-simple" or (errorHandler.buildDepError "PortMidi-simple"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }