{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "backdropper"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008, Yann Golanski.";
      maintainer = "yann@kierun.org";
      author = "Yann Golanski <yann@kierun.org>";
      homepage = "";
      url = "";
      synopsis = "Rotates backdrops for X11 displays using qiv.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "backdropper_consol" = {
          depends = [
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            ];
          buildable = true;
          };
        };
      };
    }