{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "state";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007 Evgeny Jukov";
      maintainer = "Evgeny Jukov <masloed@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "";
      url = "";
      synopsis = "Data.State";
      description = "Data.State";
      buildType = "Simple";
    };
    components = {
      "state" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.arrows)
          (hsPkgs.mtl)
        ];
      };
    };
  }