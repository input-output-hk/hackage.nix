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
    flags = { build-exec = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hps"; version = "0.14"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape and others";
      homepage = "http://rd.slavepianos.org/?t=hps";
      url = "";
      synopsis = "Haskell Postscript";
      description = "Haskell library partially implementing the\npostscript drawing model.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hcg-minus" or (errorHandler.buildDepError "hcg-minus"))
          ];
        buildable = true;
        };
      exes = {
        "hps-fractals" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hcg-minus" or (errorHandler.buildDepError "hcg-minus"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !flags.build-exec then false else true;
          };
        };
      };
    }