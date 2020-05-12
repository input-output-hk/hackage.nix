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
    flags = { pure-sha = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "OTP"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2012 Artem Leshchev,\n2016 Aleksey Uimanov,\n2018 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Artem Leshchev,\nAleksey Uimanov,\nHerbert Valerio Riedel";
      homepage = "https://github.com/hvr/OTP";
      url = "";
      synopsis = "HMAC-Based and Time-Based One-Time Passwords (HOTP & TOTP)";
      description = "Implements the /HMAC-Based One-Time Password Algorithm/ (HOTP) as\ndefined in [RFC 4226](https://tools.ietf.org/html/rfc4226)\nand the /Time-Based One-Time Password Algorithm/ (TOTP) as defined\nin [RFC 6238](https://tools.ietf.org/html/rfc6238).\n\nThe TOTP and HOTP algorithms are commonly used to implement two-step verification (2FA)\n(e.g. by [Google Authenticator](https://en.wikipedia.org/wiki/Google_Authenticator) ).\n\nSee module \"Data.OTP\" for API documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.pure-sha
          then [
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
          else [
            (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."OTP" or (errorHandler.buildDepError "OTP"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }