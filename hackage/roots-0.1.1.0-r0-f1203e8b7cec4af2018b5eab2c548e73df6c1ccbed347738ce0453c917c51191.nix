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
      identifier = { name = "roots"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "/dev/null";
      url = "";
      synopsis = "Root-finding algorithms (1-dimensional)";
      description = "Framework for and a few implementations of\n(1-dimensional) numerical root-finding algorithms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        buildable = true;
      };
    };
  }