{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mmsyn7h"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr Zhabenko 2019";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn7h";
      url = "";
      synopsis = "A program that is used in mmsyn7ukr and is similar to mmsyn6ukr executable.";
      description = "A program that is used in mmsyn7ukr and is similar to mmsyn6ukr executable. It uses the data files in the current directory instead of ones in the system defined directories. It reads Ukrainian text with the given by data files sounds.";
      buildType = "Simple";
      };
    components = {
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
            ];
          buildable = true;
          };
        };
      };
    }