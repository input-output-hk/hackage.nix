{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "blacktip"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2014, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "https://github.com/bitemyapp/blacktip";
      url = "";
      synopsis = "Decentralized, k-ordered unique ID generator.";
      description = "Clone of Boundary's Flake unique id service for Haskell, itself based on Snowflake.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bitwise" or ((hsPkgs.pkgs-errors).buildDepError "bitwise"))
          (hsPkgs."locators" or ((hsPkgs.pkgs-errors).buildDepError "locators"))
          (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."deepseq-generics" or ((hsPkgs.pkgs-errors).buildDepError "deepseq-generics"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blacktip" or ((hsPkgs.pkgs-errors).buildDepError "blacktip"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benches" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blacktip" or ((hsPkgs.pkgs-errors).buildDepError "blacktip"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }