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
      identifier = { name = "MBot"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Christophe.Scholliers@UGent.be";
      author = "Christophe Scholliers";
      homepage = "";
      url = "";
      synopsis = "Haskell interface for controlling the mBot educational robot";
      description = "This is a library to control the mBot robot with haskell.  This will only work when you connect the robot with the default firmware over 2.4ghz the Bluetooth version is not supported !";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
        ];
        buildable = true;
      };
    };
  }