{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hmp3"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hmp3" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."fps" or ((hsPkgs.pkgs-errors).buildDepError "fps"))
            ];
          libs = [
            (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"))
            ];
          buildable = true;
          };
        };
      };
    }