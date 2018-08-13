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
        name = "pred-set";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple cached predicates";
      description = "";
      buildType = "Simple";
    };
    components = {
      "pred-set" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashtables)
          (hsPkgs.hashable)
          (hsPkgs.HSet)
        ];
      };
    };
  }