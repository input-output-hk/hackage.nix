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
      identifier = { name = "keysafe"; version = "0.20160819"; };
      license = "AGPL-3.0-only";
      copyright = "2016 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "https://joeyh.name/code/keysafe/";
      url = "";
      synopsis = "back up a secret key securely to the cloud";
      description = "Keysafe backs up a secret key to several cloud servers, split up\nso that no one server can access the whole secret by itself.\n\nA password is used to encrypt the data, and it is made expensive\nto decrypt, so password cracking is infeasibly expensive.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "keysafe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."raaz" or (errorHandler.buildDepError "raaz"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."zxcvbn-c" or (errorHandler.buildDepError "zxcvbn-c"))
            (hsPkgs."dice-entropy-conduit" or (errorHandler.buildDepError "dice-entropy-conduit"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
            (hsPkgs."polynomial" or (errorHandler.buildDepError "polynomial"))
            ];
          libs = [ (pkgs."argon2" or (errorHandler.sysDepError "argon2")) ];
          buildable = true;
          };
        };
      };
    }