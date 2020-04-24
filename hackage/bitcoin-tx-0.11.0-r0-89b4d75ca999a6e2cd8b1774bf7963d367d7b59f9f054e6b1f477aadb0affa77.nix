{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitcoin-tx"; version = "0.11.0"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Utility functions for manipulating bitcoin transactions";
      description = "This library provides the same functionality as the bitcoin-tx command line\nutility, which was introduced in Bitcoin Core v0.10. These functions are\npure and require no communication with a bitcoin daemon.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bitcoin-script" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-script"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bitcoin-tx" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-script" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-script"))
            ];
          buildable = true;
          };
        };
      };
    }