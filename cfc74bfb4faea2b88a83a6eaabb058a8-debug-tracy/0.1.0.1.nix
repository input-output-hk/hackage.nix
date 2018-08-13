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
      specVersion = "1.10";
      identifier = {
        name = "debug-tracy";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@gmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "More useful trace functions for investigating bugs";
      description = "A collection of things for debugging, (to prevent me from writing them again)";
      buildType = "Simple";
    };
    components = {
      "debug-tracy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ];
      };
    };
  }