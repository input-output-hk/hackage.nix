{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
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
            (hsPkgs."dice-entropy-conduit" or ((hsPkgs.pkgs-errors).buildDepError "dice-entropy-conduit"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."finite-field" or ((hsPkgs.pkgs-errors).buildDepError "finite-field"))
            (hsPkgs."polynomial" or ((hsPkgs.pkgs-errors).buildDepError "polynomial"))
            ];
          libs = [
            (pkgs."argon2" or ((hsPkgs.pkgs-errors).sysDepError "argon2"))
            ];
          buildable = true;
          };
        };
      };
    }