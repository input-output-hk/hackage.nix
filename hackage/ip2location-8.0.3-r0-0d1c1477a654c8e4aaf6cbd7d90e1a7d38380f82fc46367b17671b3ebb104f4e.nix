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
      identifier = { name = "ip2location"; version = "8.0.3"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "sales@ip2location.com";
      author = "IP2Location";
      homepage = "http://www.ip2location.com";
      url = "";
      synopsis = "IP2Location Haskell package for IP geolocation.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          ];
        buildable = true;
        };
      };
    }