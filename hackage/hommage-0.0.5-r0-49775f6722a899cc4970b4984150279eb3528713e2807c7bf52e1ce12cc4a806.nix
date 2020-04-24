{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hommage"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<None>";
      author = "Daniel van den Eijkel <dvde@gmx.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell Offline Music Manipulation And Generation EDSL";
      description = "HOMMAGE is the successor of the Haskell Sound Lib.\n<http://substitut-fuer-feinmotorik.net/projects/haskellommage/introduction>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }