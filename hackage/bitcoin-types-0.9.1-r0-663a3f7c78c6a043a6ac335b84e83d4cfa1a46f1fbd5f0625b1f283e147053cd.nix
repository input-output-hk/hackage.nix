{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitcoin-types"; version = "0.9.1"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides consistent low-level types used commonly among Bitcoin implementations";
      description = "Instead of having each Bitcoin library re-define the low level types it is using,\nthis library provides a ready-to-use collection of low-level types and aliases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
          (hsPkgs."base58string" or ((hsPkgs.pkgs-errors).buildDepError "base58string"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base58string" or ((hsPkgs.pkgs-errors).buildDepError "base58string"))
            (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
            (hsPkgs."bitcoin-types" or ((hsPkgs.pkgs-errors).buildDepError "bitcoin-types"))
            ];
          buildable = true;
          };
        };
      };
    }