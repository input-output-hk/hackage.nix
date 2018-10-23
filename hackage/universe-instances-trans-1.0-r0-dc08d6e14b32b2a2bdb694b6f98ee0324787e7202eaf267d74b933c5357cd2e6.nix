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
        name = "universe-instances-trans";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Universe instances for types from the transformers and mtl packages";
      description = "";
      buildType = "Simple";
    };
    components = {
      "universe-instances-trans" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.universe-base)
          (hsPkgs.universe-instances-base)
        ];
      };
    };
  }