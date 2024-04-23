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
      identifier = { name = "tai"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "davean & tolt 2017";
      maintainer = "oss@xkcd.com";
      author = "davean, tolt";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Support library to enable TAI usage on systems with time kept in UTC.";
      description = "This library manages leap second data to allow using TAI time inspite of the system clock being kept in UTC.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
    };
  }