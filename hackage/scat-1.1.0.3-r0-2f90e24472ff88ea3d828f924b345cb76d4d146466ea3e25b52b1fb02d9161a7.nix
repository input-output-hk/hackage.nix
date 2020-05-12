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
      identifier = { name = "scat"; version = "1.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "romain.edelmann@gmail.com";
      author = "Romain Edelmann";
      homepage = "https://github.com/redelmann/scat";
      url = "";
      synopsis = "Generates unique passwords for various websites from a single password.";
      description = "Flexible password generator. For each service, passwords are generated deterministically from a main password and a code. Internally, Scrypt is used to obtain the hash generating the passwords.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "scat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrypt" or (errorHandler.buildDepError "scrypt"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "scat-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scrypt" or (errorHandler.buildDepError "scrypt"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      };
    }