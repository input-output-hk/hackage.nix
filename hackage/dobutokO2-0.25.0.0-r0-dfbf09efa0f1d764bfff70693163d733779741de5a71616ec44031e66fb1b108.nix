{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dobutokO2"; version = "0.25.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/dobutokO2";
      url = "";
      synopsis = "A program and a library to create experimental music from a mono audio and a Ukrainian text";
      description = "It can also create a timbre for the notes. Uses SoX inside.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."mmsyn3" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn3"))
          (hsPkgs."mmsyn7s" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7s"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mmsyn7ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7ukr"))
          (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
          (hsPkgs."mmsyn6ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn6ukr"))
          ];
        buildable = true;
        };
      exes = {
        "dobutokO2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mmsyn3" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn3"))
            (hsPkgs."mmsyn7s" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7s"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mmsyn7ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7ukr"))
            (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
            (hsPkgs."mmsyn6ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn6ukr"))
            ];
          buildable = true;
          };
        };
      };
    }