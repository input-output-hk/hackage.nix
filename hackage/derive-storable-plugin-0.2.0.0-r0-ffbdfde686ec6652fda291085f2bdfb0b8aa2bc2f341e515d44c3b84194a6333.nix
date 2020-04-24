{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "derive-storable-plugin"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kłoczko";
      homepage = "https://www.github.com/mkloczko/derive-storable-plugin/";
      url = "";
      synopsis = "GHC core plugin supporting the derive-storable package.";
      description = "The package helps derive-storable package in forcing compile time evaluation of\nsizes, alignments and offsets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
          (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
          ];
        buildable = true;
        };
      tests = {
        "ids-concrete" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-handwritten" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-newtype" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-parametrised-spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-typesynonym" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghci" or ((hsPkgs.pkgs-errors).buildDepError "ghci"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "plugin-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."derive-storable" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or ((hsPkgs.pkgs-errors).buildDepError "derive-storable-plugin"))
            ];
          buildable = true;
          };
        };
      };
    }