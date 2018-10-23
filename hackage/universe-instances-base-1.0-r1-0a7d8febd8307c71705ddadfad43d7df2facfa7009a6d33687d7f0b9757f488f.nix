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
        name = "universe-instances-base";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Universe instances for types from the base package";
      description = "";
      buildType = "Simple";
    };
    components = {
      "universe-instances-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.universe-base)
        ];
      };
    };
  }