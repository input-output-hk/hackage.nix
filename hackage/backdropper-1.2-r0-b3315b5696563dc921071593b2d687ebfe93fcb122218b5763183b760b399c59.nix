{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "backdropper"; version = "1.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008, Yann Golanski.";
      maintainer = "yann@kierun.org";
      author = "Yann Golanski <yann@kierun.org>";
      homepage = "";
      url = "";
      synopsis = "Rotates backdrops for X11 displays using Imagemagic.";
      description = "Rotates backdrops for X11 displays using Imagemagic.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "backdropper_consol" = {
          depends = [
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      };
    }