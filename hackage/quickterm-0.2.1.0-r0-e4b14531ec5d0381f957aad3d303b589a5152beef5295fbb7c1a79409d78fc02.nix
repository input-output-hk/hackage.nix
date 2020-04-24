{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickterm"; version = "0.2.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sgschlesinger@gmail.com,aka.bash0r@gmail.com";
      author = "Samuel Schlesinger, Nils 'bash0r' Jonsson";
      homepage = "https://github.com/SamuelSchlesinger/Quickterm";
      url = "";
      synopsis = "An interface for describing and executing terminal applications";
      description = "A quick and modular way to construct terminal interfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          (hsPkgs."hashmap" or ((hsPkgs.pkgs-errors).buildDepError "hashmap"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "qt-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quickterm" or ((hsPkgs.pkgs-errors).buildDepError "quickterm"))
            ];
          buildable = true;
          };
        };
      };
    }