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
      specVersion = "1.4";
      identifier = {
        name = "uni-posixutil";
        version = "2.2.1.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Christian.Maeder@dfki.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Posix utilities for the uniform workbench";
      description = "posix utilities";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.uni-util)
          (hsPkgs.uni-events)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }