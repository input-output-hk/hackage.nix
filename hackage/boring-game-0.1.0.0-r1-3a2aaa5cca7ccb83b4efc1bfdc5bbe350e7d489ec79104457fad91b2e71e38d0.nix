{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boring-game"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Truong Hoang Dung";
      maintainer = "checkraiser11@gmail.com";
      author = "Truong Hoang Dung";
      homepage = "https://github.com/checkraiser/boring-game#readme";
      url = "";
      synopsis = "An educational game";
      description = "Using Gloss to build game in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          ];
        buildable = true;
        };
      exes = {
        "boring-game-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boring-game" or ((hsPkgs.pkgs-errors).buildDepError "boring-game"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      tests = {
        "boring-game-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boring-game" or ((hsPkgs.pkgs-errors).buildDepError "boring-game"))
            ];
          buildable = true;
          };
        };
      };
    }