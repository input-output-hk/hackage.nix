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
        name = "miku";
        version = "2014.5.19";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/miku";
      url = "";
      synopsis = "A minimum web dev DSL in Haskell";
      description = "A simple library for fast web prototyping in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.hack2)
          (hsPkgs.hack2-contrib)
          (hsPkgs.air)
          (hsPkgs.air-th)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
        ];
      };
    };
  }