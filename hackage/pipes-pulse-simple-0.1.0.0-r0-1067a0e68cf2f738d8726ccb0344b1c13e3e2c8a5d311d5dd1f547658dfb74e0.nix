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
      identifier = { name = "pipes-pulse-simple"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 Tristan de Cacqueray";
      maintainer = "Tristan de Cacqueray <tdecacqu@redhat.com>";
      author = "Tristan de Cacqueray";
      homepage = "https://github.com/TristanCacqueray/pipes-pulse-simple#readme";
      url = "";
      synopsis = "Pipes for pulse-simple audio";
      description = "Pipes for pulse-simple audio.\n\nUse this library to produce or consume audio buffer.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pulse-simple" or (errorHandler.buildDepError "pulse-simple"))
        ];
        buildable = true;
      };
    };
  }