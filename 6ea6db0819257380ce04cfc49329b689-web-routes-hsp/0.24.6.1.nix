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
        name = "web-routes-hsp";
        version = "0.24.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Adds XMLGenerator instance for RouteT monad";
      description = "The module makes it easy to use type-safe URLs in HSP templates";
      buildType = "Simple";
    };
    components = {
      "web-routes-hsp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsp)
          (hsPkgs.text)
          (hsPkgs.web-routes)
        ];
      };
    };
  }