{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "instant-hashable";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "";
      url = "";
      synopsis = "Generic Hashable instances through instant-generics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "instant-hashable" = {
        depends  = [
          (hsPkgs.hashable)
          (hsPkgs.base)
          (hsPkgs.instant-generics)
        ];
      };
    };
  }