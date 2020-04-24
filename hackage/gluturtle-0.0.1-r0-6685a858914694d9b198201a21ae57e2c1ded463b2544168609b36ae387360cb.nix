{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gluturtle"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "turtle like LOGO with glut";
      description = "turtle like LOGO with glut\n\nNow alpha alpha alpha alpha version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yjtools" or ((hsPkgs.pkgs-errors).buildDepError "yjtools"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."yjsvg" or ((hsPkgs.pkgs-errors).buildDepError "yjsvg"))
          (hsPkgs."Imlib" or ((hsPkgs.pkgs-errors).buildDepError "Imlib"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          ];
        buildable = true;
        };
      exes = {
        "testTurtle" = { buildable = true; };
        "randomTurtle" = {
          depends = [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }