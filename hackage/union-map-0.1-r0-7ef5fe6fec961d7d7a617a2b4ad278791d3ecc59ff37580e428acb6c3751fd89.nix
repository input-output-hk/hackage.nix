{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "union-map";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "minpou.primer@gmail.com";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/union-map";
      url = "";
      synopsis = "Heterogeneous map by open unions.";
      description = "Heterogeneous map implementation, not requires IO and Typeable likes";
      buildType = "Simple";
    };
    components = {
      "union-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.extensible)
        ];
      };
    };
  }