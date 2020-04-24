{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mmsyn7ukr"; version = "0.13.0.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019-2020";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7ukr";
      url = "";
      synopsis = "A simple basic interface to some SoX functionality or to produce a voice that can be used by mmsyn7h";
      description = "A program and a library that can be used as a simple basic interface to some SoX functionality or to produce your voice in Ukrainian (if you pronounce the sounds properly) represented by the separate sounds or something special like soft sign.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mmsyn6ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn6ukr"))
          (hsPkgs."mmsyn3" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn3"))
          ];
        buildable = true;
        };
      exes = {
        "mmsyn7ukr" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mmsyn6ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn6ukr"))
            (hsPkgs."mmsyn3" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn3"))
            ];
          buildable = true;
          };
        };
      };
    }