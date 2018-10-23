{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "uni-htk";
        version = "2.2.1.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "c.maeder@jacobs-university.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/htk/";
      url = "";
      synopsis = "Graphical User Interface for Haskell Programs";
      description = "GUI toolkit based on Tcl\\/Tk";
      buildType = "Simple";
    };
    components = {
      "uni-htk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.uni-util)
          (hsPkgs.uni-events)
          (hsPkgs.uni-posixutil)
          (hsPkgs.uni-reactor)
        ];
      };
    };
  }