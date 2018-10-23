{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-default";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "A class for types with a default value";
      description = "";
      buildType = "Simple";
    };
    components = {
      "data-default" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.data-default-instances-base)
          (hsPkgs.data-default-instances-containers)
          (hsPkgs.data-default-instances-dlist)
          (hsPkgs.data-default-instances-old-locale)
        ];
      };
    };
  }