{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."secret-sharing" or ((hsPkgs.pkgs-errors).buildDepError "secret-sharing"))
            (hsPkgs."raaz" or ((hsPkgs.pkgs-errors).buildDepError "raaz"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            (hsPkgs."zxcvbn-c" or ((hsPkgs.pkgs-errors).buildDepError "zxcvbn-c"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."socks" or ((hsPkgs.pkgs-errors).buildDepError "socks"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."token-bucket" or ((hsPkgs.pkgs-errors).buildDepError "token-bucket"))
            (hsPkgs."bloomfilter" or ((hsPkgs.pkgs-errors).buildDepError "bloomfilter"))
            (hsPkgs."disk-free-space" or ((hsPkgs.pkgs-errors).buildDepError "disk-free-space"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."unbounded-delays" or ((hsPkgs.pkgs-errors).buildDepError "unbounded-delays"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."SafeSemaphore" or ((hsPkgs.pkgs-errors).buildDepError "SafeSemaphore"))
            (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            ];
          libs = [
            (pkgs."argon2" or ((hsPkgs.pkgs-errors).sysDepError "argon2"))
            ];
          buildable = true;
          };
        };
      };
    }