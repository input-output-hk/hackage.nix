{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "uni-posixutil";
        version = "2.2.0.0";
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
      "uni-posixutil" = {
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