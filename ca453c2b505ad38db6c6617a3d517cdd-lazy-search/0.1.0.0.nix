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
        name = "lazy-search";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonas.duregard@chalmers.se";
      author = "Jonas Duregard";
      homepage = "";
      url = "";
      synopsis = "Finds values satisfying a lazy predicate";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lazy-search" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.size-based)
        ];
      };
    };
  }