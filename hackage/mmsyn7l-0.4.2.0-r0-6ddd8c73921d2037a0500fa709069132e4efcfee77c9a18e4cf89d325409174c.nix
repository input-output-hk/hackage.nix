{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mmsyn7l"; version = "0.4.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "(c) OleksandrZhabenko 2020";
      homepage = "https://hackage.haskell.org/package/mmsyn7l";
      url = "";
      synopsis = "Modifies the amplitudes of the Ukrainian sounds representations created by mmsyn7ukr package.";
      description = "A program and a library to modify the amplitudes of the Ukrainian sounds representations created by mmsyn7ukr package or somehow otherwise.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mmsyn7ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7ukr"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "mmsyn7l" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mmsyn7ukr" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn7ukr"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }