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
      specVersion = "1.2";
      identifier = {
        name = "Yogurt";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "http://martijn.van.steenbergen.nl/projects/yogurt/";
      url = "";
      synopsis = "A MUD client library";
      description = "A MUD client library for Haskell. Features prioritized, regex-based hooks, variables and timers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.regex-posix)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.readline)
          (hsPkgs.network)
        ];
      };
    };
  }