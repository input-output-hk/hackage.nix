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
      specVersion = "1.2";
      identifier = {
        name = "air-th";
        version = "2014.5.19";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/air-th";
      url = "";
      synopsis = "air";
      description = "Template Haskell helpers for air";
      buildType = "Simple";
    };
    components = {
      "air-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.air)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }