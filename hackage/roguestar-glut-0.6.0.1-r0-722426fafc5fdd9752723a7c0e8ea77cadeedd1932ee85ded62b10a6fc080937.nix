{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "roguestar-glut"; version = "0.6.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike game.  GLUT front-end.";
      description = "Requires roguestar and roguestar-engine.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "roguestar-glut" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."roguestar-gl" or ((hsPkgs.pkgs-errors).buildDepError "roguestar-gl"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."rsagl" or ((hsPkgs.pkgs-errors).buildDepError "rsagl"))
            ];
          buildable = true;
          };
        };
      };
    }