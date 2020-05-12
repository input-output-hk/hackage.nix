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
      identifier = { name = "radius"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "https://gitlab.com/codemonkeylabs/radius#readme";
      url = "";
      synopsis = "Remote Authentication Dial In User Service (RADIUS)";
      description = "This module provides types and on the wire de/coding of RADIUS packets as per RFC2865";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
          ];
        buildable = true;
        };
      };
    }