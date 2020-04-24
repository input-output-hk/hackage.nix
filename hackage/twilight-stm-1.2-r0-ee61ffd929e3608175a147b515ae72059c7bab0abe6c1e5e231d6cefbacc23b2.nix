{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "twilight-stm"; version = "1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Annette Bieniusa";
      maintainer = "Annette Bieniusa <bieniusa@informatik.uni-freiburg.de>";
      author = "";
      homepage = "http://proglang.informatik.uni-freiburg.de/projects/twilight/";
      url = "";
      synopsis = "STM library with safe irrevocable I/O and inconsistency repair";
      description = "A STM library with safe irrevocable I/O and inconsistency repair";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }