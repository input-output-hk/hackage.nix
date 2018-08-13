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
        name = "web-routes-th";
        version = "0.20.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "";
      url = "";
      synopsis = "Support for deriving PathInfo using Template Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "web-routes-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.web-routes)
        ];
      };
    };
  }