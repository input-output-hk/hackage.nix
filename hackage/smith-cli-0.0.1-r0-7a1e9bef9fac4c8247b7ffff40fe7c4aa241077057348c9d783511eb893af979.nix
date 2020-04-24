{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smith-cli"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019, HotelKilo";
      maintainer = "mth@smith.st";
      author = "Mark Hibberd";
      homepage = "https://github.com/smith-security/smith-cli";
      url = "";
      synopsis = "Command line tool for <https://smith.st/ Smith>.";
      description = "This is a command line tool for interacting with <https://smith.st Smith>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "smith" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."crypto-pubkey-openssh" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-openssh"))
            (hsPkgs."crypto-pubkey-types" or ((hsPkgs.pkgs-errors).buildDepError "crypto-pubkey-types"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."openssh-protocol" or ((hsPkgs.pkgs-errors).buildDepError "openssh-protocol"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."smith-client" or ((hsPkgs.pkgs-errors).buildDepError "smith-client"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "transformers-bifunctors"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }