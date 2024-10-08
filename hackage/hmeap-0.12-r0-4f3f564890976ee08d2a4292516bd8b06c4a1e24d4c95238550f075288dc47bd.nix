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
      identifier = { name = "hmeap"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape and others, 2007-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hmeap";
      url = "";
      synopsis = "Haskell Meapsoft Parser";
      description = "Parser for the analysis files produced by the\nMeapsoft feature extractor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."delimited-text" or (errorHandler.buildDepError "delimited-text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }