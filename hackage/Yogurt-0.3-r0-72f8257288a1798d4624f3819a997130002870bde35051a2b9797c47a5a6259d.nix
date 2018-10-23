{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Yogurt";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2008-2009 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "http://martijn.van.steenbergen.nl/projects/yogurt/";
      url = "";
      synopsis = "A MUD client library";
      description = "A MUD client library for Haskell. Features prioritized, regex-based hooks, variables and timers.";
      buildType = "Simple";
    };
    components = {
      "Yogurt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.regex-posix)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.readline)
          (hsPkgs.network)
          (hsPkgs.process)
        ];
      };
    };
  }