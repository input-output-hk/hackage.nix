{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-default-instances-base";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "Default instances for types in base";
      description = "";
      buildType = "Simple";
    };
    components = {
      "data-default-instances-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
        ];
      };
    };
  }