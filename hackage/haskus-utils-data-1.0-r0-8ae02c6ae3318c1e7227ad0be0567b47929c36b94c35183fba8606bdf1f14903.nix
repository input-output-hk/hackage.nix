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
      specVersion = "1.20";
      identifier = {
        name = "haskus-utils-data";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2018";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org";
      url = "";
      synopsis = "Haskus utility modules";
      description = "Haskus data utility modules";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskus-utils-types)
          (hsPkgs.extra)
          (hsPkgs.recursion-schemes)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }