{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crypto-multihash"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Marcello Seri";
      maintainer = "marcello.seri@gmail.com";
      author = "Marcello Seri";
      homepage = "https://github.com/mseri/crypto-multihash#readme";
      url = "";
      synopsis = "Multihash library on top of cryptonite crypto library";
      description = "Multihash is a protocol for encoding the hash algorithm\nand digest length at the start of the digest, see the official\n<https://github.com/jbenet/multihash/ multihash github>.\nUsage and additional informations are on README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base58-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base58-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          ];
        buildable = true;
        };
      exes = {
        "mh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."crypto-multihash" or ((hsPkgs.pkgs-errors).buildDepError "crypto-multihash"))
            ];
          buildable = true;
          };
        };
      tests = {
        "crypto-multihash-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."crypto-multihash" or ((hsPkgs.pkgs-errors).buildDepError "crypto-multihash"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }