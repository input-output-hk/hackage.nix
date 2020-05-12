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
      specVersion = "1.2";
      identifier = { name = "ft-generator"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "janis.voigtlaender@uni-due.de";
      author = "Janis Voigtlaender";
      homepage = "";
      url = "";
      synopsis = "implementation accompanying a WFLP'19 submission";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ft-generator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }