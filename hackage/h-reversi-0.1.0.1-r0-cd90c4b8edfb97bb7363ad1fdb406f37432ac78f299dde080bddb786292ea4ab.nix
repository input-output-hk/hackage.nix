{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "h-reversi"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Apoorv Ingle";
      maintainer = "apoorv.ingle@gmail.com";
      author = "Apoorv Ingle";
      homepage = "https://github.com/apoorvingle/h-reversi";
      url = "";
      synopsis = "Reversi game in haskell/blank-canvas";
      description = "@h-reversi@ is build using using html5/blank-canvas\n@\n\n<<https://github.com/apoorvingle/h-reversi/blob/master/images/screenshot.jpeg>>\n\n@\nPlease visit <https://github.com/apoorvingle/h-reversi h-reversi> for more details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blank-canvas" or ((hsPkgs.pkgs-errors).buildDepError "blank-canvas"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "h-reversi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blank-canvas" or ((hsPkgs.pkgs-errors).buildDepError "blank-canvas"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "h-reversi-properties" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."h-reversi" or ((hsPkgs.pkgs-errors).buildDepError "h-reversi"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }