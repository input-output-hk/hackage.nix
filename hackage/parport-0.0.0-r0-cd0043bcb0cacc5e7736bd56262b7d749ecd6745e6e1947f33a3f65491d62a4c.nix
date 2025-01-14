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
      specVersion = "1.0";
      identifier = { name = "parport"; version = "0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "Rick Kaudewitz 2008";
      maintainer = "Rick Kaudewitz";
      author = "kaudewitz@gmx.de";
      homepage = "";
      url = "";
      synopsis = "Simply interfacing the parallel port on linux";
      description = "This is a simple library that lets you read and write pins on\nthe parallel port. It is mainly intended for controlling and\nregulating hardware.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }