{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      check = false;
      pure = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "linear-maps";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Péter Diviánszky";
      maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Finite maps for linear use";
      description = "Finite maps for linear use.\n\nThis package contains three different implementations with the same interface.\nThe implementations are controlled by Cabal flags which can be set at installation time\nwith the following commands:\n\n[@cabal install -fcheck@]\nInstalls an implementation where linear use of maps is needed and checked (at runtime).\nIt is recommended to use this version during development.\n\n[@cabal install@]\nInstalls an implementation where linear use of maps is needed but not checked.\nIt is the fastest implementation so it is ideal for the final product.\nInstall this only if you are certain that maps are used linearly.\n\n[@cabal install -fpure@]\nInstalls an implementation where linear use of maps is not needed and not checked.\nThis is the simplest implementation so it can be read as a documentation.\nDo not install this version because it is slow and does not check the linear use of maps.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.HUnit)
        ];
      };
      exes = {
        "linear-maps-introduction" = {};
        "linear-maps-exercises" = {};
      };
    };
  }