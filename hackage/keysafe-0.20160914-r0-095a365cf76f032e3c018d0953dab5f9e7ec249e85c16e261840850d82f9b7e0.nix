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
      identifier = { name = "keysafe"; version = "0.20160914"; };
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
            (hsPkgs."secret-sharing" or (errorHandler.buildDepError "secret-sharing"))
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
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."socks" or (errorHandler.buildDepError "socks"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."token-bucket" or (errorHandler.buildDepError "token-bucket"))
            (hsPkgs."bloomfilter" or (errorHandler.buildDepError "bloomfilter"))
            (hsPkgs."disk-free-space" or (errorHandler.buildDepError "disk-free-space"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          libs = [ (pkgs."argon2" or (errorHandler.sysDepError "argon2")) ];
          buildable = true;
          };
        };
      };
    }