{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "format-status"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "George Rogers";
      homepage = "";
      url = "";
      synopsis = "A utility for writing the date to dzen2.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "format-status" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."data-concurrent-queue" or ((hsPkgs.pkgs-errors).buildDepError "data-concurrent-queue"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }