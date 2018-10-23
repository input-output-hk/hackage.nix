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
        name = "hetero-map";
        version = "0.20";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/hetero-map";
      url = "";
      synopsis = "Pure heterogeneous maps.";
      description = "Pure heterogeneous maps.";
      buildType = "Simple";
    };
    components = {
      "hetero-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }