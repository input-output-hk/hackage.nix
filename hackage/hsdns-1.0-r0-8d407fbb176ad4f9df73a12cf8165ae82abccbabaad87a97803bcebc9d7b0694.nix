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
      specVersion = "1.0";
      identifier = { name = "hsdns"; version = "1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/hsdns/";
      url = "";
      synopsis = "Asynchronous DNS Resolver";
      description = "An asynchronous DNS resolver based on GNU ADNS.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        libs = [ (pkgs."adns" or (errorHandler.sysDepError "adns")) ];
        buildable = true;
      };
      exes = {
        "adns-reverse-lookup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          libs = [ (pkgs."adns" or (errorHandler.sysDepError "adns")) ];
          buildable = true;
        };
      };
    };
  }