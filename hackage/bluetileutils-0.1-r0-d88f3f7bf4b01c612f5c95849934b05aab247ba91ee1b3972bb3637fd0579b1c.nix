{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bluetileutils"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "";
      url = "";
      synopsis = "Utilities for Bluetile";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bluetiledock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.glade)
            (hsPkgs.gtk)
            (hsPkgs.X11)
            ];
          };
        "bluetilemockwin" = {
          depends = [ (hsPkgs.base) (hsPkgs.base) (hsPkgs.gtk) ];
          };
        "bluetilegreet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.glade)
            (hsPkgs.gtk)
            ];
          };
        };
      };
    }