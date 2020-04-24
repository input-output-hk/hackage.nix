{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xturtle"; version = "0.1.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "turtle like LOGO";
      description = "In ghci\n\n> :m Graphics.X11.Turtle\n> f <- openField\n> t <- newTurtle f\n> forward t 100\n> left t 50\n\netc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yjtools" or ((hsPkgs.pkgs-errors).buildDepError "yjtools"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."X11-xft" or ((hsPkgs.pkgs-errors).buildDepError "X11-xft"))
          (hsPkgs."x11-xim" or ((hsPkgs.pkgs-errors).buildDepError "x11-xim"))
          (hsPkgs."setlocale" or ((hsPkgs.pkgs-errors).buildDepError "setlocale"))
          (hsPkgs."yjsvg" or ((hsPkgs.pkgs-errors).buildDepError "yjsvg"))
          (hsPkgs."Imlib" or ((hsPkgs.pkgs-errors).buildDepError "Imlib"))
          ];
        buildable = true;
        };
      };
    }