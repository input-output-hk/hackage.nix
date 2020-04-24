{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitcoin-block"; version = "0.12.0"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Utility functions for manipulating bitcoin blocks";
      description = "This library provides functionality for parsing, inspecting,\nhashing and serialization of bitcoin blocks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
          (hsPkgs."bitcoin-tx" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-tx"))
          (hsPkgs."bitcoin-types" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-types"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
            (hsPkgs."bitcoin-tx" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-types" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-types"))
            (hsPkgs."bitcoin-block" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-block"))
            ];
          buildable = true;
          };
        };
      };
    }