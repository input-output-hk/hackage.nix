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
      identifier = { name = "OTP"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "(c) 2012 Artem Leshchev";
      maintainer = "matshch@gmail.com";
      author = "Artem Leshchev";
      homepage = "https://github.com/matshch/OTP";
      url = "";
      synopsis = "HMAC-Based and Time-Based One-Time Passwords";
      description = "Implements HMAC-Based One-Time Password Algorithm as defined in RFC 4226 and Time-Based One-Time Password Algorithm as defined in RFC 6238.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }