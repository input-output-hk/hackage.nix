{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "minimung"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov Zaytsev <yakov@yakov.cc>";
      author = "Yakov Zaytsev";
      homepage = "";
      url = "";
      synopsis = "Shows how to run grabber on Mac OS X";
      description = "minimung is capable to do real time CIF??\n\nOnly 'Mac', 'Mac.Carbon', 'Mac.QuickDraw', 'Mac.QuickTime' are stable and good. The rest is quick hack\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "minimung" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            ];
          frameworks = [
            (pkgs."QuickTime" or ((hsPkgs.pkgs-errors).sysDepError "QuickTime"))
            (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"))
            ];
          buildable = true;
          };
        };
      };
    }