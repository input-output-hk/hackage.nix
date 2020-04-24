{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "with-utf8"; version = "1.0.1.0"; };
      license = "MPL-2.0";
      copyright = "2020 Serokell";
      maintainer = "Kirill Elagin <kirelagin@serokell.io>";
      author = "Kirill Elagin <kirelagin@serokell.io>";
      homepage = "https://github.com/serokell/haskell-with-utf8#readme";
      url = "";
      synopsis = "Get your IO right on the first try";
      description = "This minimalistic library helps you navigate the world of text encodings\navoiding @invalid argument (invalid byte sequence)@\nand @invalid argument (invalid character)@ in runtime.\n\nThe two most important modules are:\n\n* \"Main.Utf8\"\n* \"System.IO.Utf8\"\n\nSee <https://serokell.io/blog/haskell-with-utf8 this blog post> for why this\nlibrary exists and what exactly it does.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "utf8-troubleshoot" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "with-utf8-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."with-utf8" or ((hsPkgs.pkgs-errors).buildDepError "with-utf8"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or ((hsPkgs.pkgs-errors).buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }