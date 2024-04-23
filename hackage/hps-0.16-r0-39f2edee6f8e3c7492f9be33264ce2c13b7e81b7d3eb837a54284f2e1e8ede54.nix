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
      identifier = { name = "hps"; version = "0.16"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2017";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape and others";
      homepage = "http://rd.slavepianos.org/t/hps";
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
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }