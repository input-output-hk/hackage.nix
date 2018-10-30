{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.4";
      identifier = {
        name = "uni-graphs";
        version = "2.2.1.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Graphs";
      description = "Graphs toolkit";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.uni-util)
          (hsPkgs.uni-events)
          (hsPkgs.uni-reactor)
          (hsPkgs.uni-htk)
        ];
      };
    };
  }