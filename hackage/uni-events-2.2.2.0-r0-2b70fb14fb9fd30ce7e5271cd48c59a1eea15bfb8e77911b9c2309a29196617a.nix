{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-events"; version = "2.2.2.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "c.maeder@jacobs-university.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Event handling for the uniform workbench";
      description = "uni events";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.uni-util) ];
        };
      };
    }