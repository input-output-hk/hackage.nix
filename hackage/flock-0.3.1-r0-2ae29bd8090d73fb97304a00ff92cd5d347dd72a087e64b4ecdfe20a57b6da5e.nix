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
      identifier = { name = "flock"; version = "0.3.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2007";
      maintainer = "Erik Hesselink <hesselink@gmail.com>";
      author = "Ian Lynagh";
      homepage = "http://github.com/hesselink/flock";
      url = "";
      synopsis = "Wrapper for flock(2)";
      description = "Simple wrapper around flock(2).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }