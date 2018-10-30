{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "roguestar";
        version = "0.6.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Christopher Lane Hinson <lane@downstairspeople.org>";
      author = "Christopher Lane Hinson <lane@downstairspeople.org>";
      homepage = "http://roguestar.downstairspeople.org/";
      url = "";
      synopsis = "Sci-fi roguelike game.  Client application.";
      description = "Requires roguestar-engine and roguestar-glut.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "roguestar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.old-time)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }