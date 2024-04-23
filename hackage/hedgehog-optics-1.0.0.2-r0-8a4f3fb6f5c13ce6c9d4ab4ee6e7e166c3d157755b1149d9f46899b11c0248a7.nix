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
      specVersion = "3.0";
      identifier = { name = "hedgehog-optics"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/hedgehog-optics";
      url = "";
      synopsis = "Hedgehog properties for optics laws";
      description = "Are your prisms well-formed? Test and be confident.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
        ];
        buildable = true;
      };
    };
  }