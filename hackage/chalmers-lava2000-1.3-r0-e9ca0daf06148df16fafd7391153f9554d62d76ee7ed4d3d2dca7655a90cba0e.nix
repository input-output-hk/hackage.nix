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
      specVersion = "1.6";
      identifier = {
        name = "chalmers-lava2000";
        version = "1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Koen Claessen <koen@chalmers.se>";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "http://projects.haskell.org/chalmers-lava2000/";
      url = "";
      synopsis = "Hardware description library";
      description = "Hardware description library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.random)
        ];
      };
    };
  }