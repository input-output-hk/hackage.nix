{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "reheat"; version = "0.1.4"; };
      license = "LicenseRef-GPL";
      copyright = "GPL";
      maintainer = "Ingolf Wagner <palipalo9@gmail.com>";
      author = "Ingolf Wagner";
      homepage = "https://github.com/mrVanDalo/reheat";
      url = "";
      synopsis = "to make notes and reduce impact on idle time on writing other programms.";
      description = "a programm to make notes and reduce impact on idle time on writing other programms.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "reheat" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."vty-ui" or ((hsPkgs.pkgs-errors).buildDepError "vty-ui"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-reheat" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."vty-ui" or ((hsPkgs.pkgs-errors).buildDepError "vty-ui"))
            ];
          buildable = true;
          };
        };
      };
    }