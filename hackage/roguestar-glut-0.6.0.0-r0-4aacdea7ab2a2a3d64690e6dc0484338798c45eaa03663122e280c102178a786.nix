{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "roguestar-glut"; version = "0.6.0.0"; };
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
            (hsPkgs.base)
            (hsPkgs.roguestar-gl)
            (hsPkgs.GLUT)
            (hsPkgs.rsagl)
            ];
          };
        };
      };
    }