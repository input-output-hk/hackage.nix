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
      specVersion = "1.6";
      identifier = { name = "hslogger-template"; version = "1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Automatic generation of hslogger functions";
      description = "Library for generating hslogger functions using Template Haskell.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }