{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Pollutocracy"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Isaac Dupree <antispam@idupree.com>";
      author = "Isaac Dupree";
      homepage = "";
      url = "";
      synopsis = "An imaginary world";
      description = "This is a simulated world I invented.\nIt has pollution and energy and trees and mountains\nand chaos storms.  It is randomly generated and\nnon-interactive at present.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Pollutocracy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.GLUT)
            (hsPkgs.clock)
            ];
          };
        };
      };
    }