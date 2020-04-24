{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yggdrasil"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "tk@drwx.org";
      author = "Thomas Kerber";
      homepage = "https://git.drwx.org/phd/yggdrasil";
      url = "";
      synopsis = "Executable specifications of composable cryptographic protocols.";
      description = "Yggdrasil is a framework for writing executable\nspecification of composable cryptographic protocols. It is\nmodelled after Ran Canetti's Universal Composability\nframework, although it departs from it in multiple places\nto simplify the interface, and provide strong typing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."yggdrasil" or ((hsPkgs.pkgs-errors).buildDepError "yggdrasil"))
            ];
          buildable = true;
          };
        };
      };
    }