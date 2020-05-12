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
      identifier = { name = "himg"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "http://github.com/Fuuzetsu/himg";
      url = "";
      synopsis = "Simple gtk2hs image viewer. Point it at an image and fire away.";
      description = "Simple gtk2hs image viewer. Point it at an image and fire away.\nThe only ‘fancy’ feature is the ability to work with Internet URLs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "himg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }