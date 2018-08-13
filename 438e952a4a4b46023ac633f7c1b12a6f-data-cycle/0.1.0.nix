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
        name = "data-cycle";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tob.brandt@gmail.com";
      author = "Tobias Brandt";
      homepage = "";
      url = "";
      synopsis = "a cyclic doubly linked list";
      description = "This package implements a cyclic doubly linked list and\ndefines various instances for it.";
      buildType = "Simple";
    };
    components = {
      "data-cycle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.collections-api)
          (hsPkgs.collections-base-instances)
        ];
      };
    };
  }