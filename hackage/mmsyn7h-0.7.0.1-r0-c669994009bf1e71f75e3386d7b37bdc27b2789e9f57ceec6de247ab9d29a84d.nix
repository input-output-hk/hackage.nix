{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mmsyn7h"; version = "0.7.0.1"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019-2020";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7h";
      url = "";
      synopsis = "Produces a sound recording specified by the Ukrainian text.";
      description = "A program and a library that are used with mmsyn7ukr (or separately) and are similar to mmsyn6ukr executable. The program uses the data files in the current directory instead of ones in the system defined directories. It reads Ukrainian text with the given by data files sounds.";
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
          (hsPkgs."mmsyn7s" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7s"))
          (hsPkgs."mmsyn7ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7ukr"))
          ];
        buildable = true;
        };
      exes = {
        "mmsyn7h" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mmsyn6ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn6ukr"))
            (hsPkgs."mmsyn3" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn3"))
            (hsPkgs."mmsyn7s" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7s"))
            (hsPkgs."mmsyn7ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7ukr"))
            ];
          buildable = true;
          };
        };
      };
    }