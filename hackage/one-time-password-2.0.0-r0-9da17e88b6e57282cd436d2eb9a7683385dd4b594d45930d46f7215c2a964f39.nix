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
      identifier = { name = "one-time-password"; version = "2.0.0"; };
      license = "MIT";
      copyright = "(c) 2012 Artem Leshchev, 2016 Aleksey Uimanov";
      maintainer = "s9gf4ult@gmail.com <Aleksey Uimanov>";
      author = "Artem Leshchev, Aleksey Uimanov";
      homepage = "https://github.com/s9gf4ult/one-time-password";
      url = "";
      synopsis = "HMAC-Based and Time-Based One-Time Passwords";
      description = "Implements HMAC-Based One-Time Password Algorithm as\ndefined in RFC 4226 and Time-Based One-Time Password\nAlgorithm as defined in RFC 6238.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."one-time-password" or (errorHandler.buildDepError "one-time-password"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }