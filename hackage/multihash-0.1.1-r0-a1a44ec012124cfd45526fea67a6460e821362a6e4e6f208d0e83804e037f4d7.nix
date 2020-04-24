{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multihash"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Luke Hoersten";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/multihash";
      url = "";
      synopsis = "Multihash library and CLI executable";
      description = "Multihash is a protocol for encoding the hash algorithm\nand digest length at the start of the digest.\nMore information available at the official\n<https://github.com/jbenet/multihash/ multihash github>.\n\nBase32 encoding, Blake hashing, and file checking still to be added.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base58-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base58-bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."hex" or ((hsPkgs.pkgs-errors).buildDepError "hex"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          ];
        buildable = true;
        };
      exes = {
        "multihash" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."base58-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base58-bytestring"))
            (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."hex" or ((hsPkgs.pkgs-errors).buildDepError "hex"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."multihash" or ((hsPkgs.pkgs-errors).buildDepError "multihash"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }