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
      specVersion = "1.8";
      identifier = { name = "hps"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape and others";
      homepage = "http://slavepianos.org/rd/?t=hps";
      url = "";
      synopsis = "Haskell Postscript";
      description = "Haskell library partially implementing the\npostscript drawing model.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "hps-fractals" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }