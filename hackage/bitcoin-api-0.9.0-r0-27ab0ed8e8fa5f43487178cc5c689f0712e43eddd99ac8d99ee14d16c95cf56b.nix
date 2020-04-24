{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitcoin-api"; version = "0.9.0"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides access to the RPC API of Bitcoin Core";
      description = "The Bitcoin Core application provides an HTTP RPC interface for communication.\nThis library implements access to these functions. It builds on top of the\n`bitcoin-tx` and `bitcoin-script`, and as such provides an extremely flexible\nenvironment to create, manipulate and store transactions and custom scripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
          (hsPkgs."base58string" or ((hsPkgs.pkgs-errors).buildDepError "base58string"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."bitcoin-types" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-types"))
          (hsPkgs."bitcoin-block" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-block"))
          (hsPkgs."bitcoin-tx" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-tx"))
          (hsPkgs."bitcoin-script" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-script"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."groom" or ((hsPkgs.pkgs-errors).buildDepError "groom"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."base58string" or ((hsPkgs.pkgs-errors).buildDepError "base58string"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bitcoin-tx" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-script" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-script"))
            (hsPkgs."bitcoin-api" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-api"))
            ];
          buildable = true;
          };
        };
      };
    }