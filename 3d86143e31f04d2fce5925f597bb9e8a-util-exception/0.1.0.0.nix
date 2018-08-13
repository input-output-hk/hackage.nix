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
        name = "util-exception";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Exceptional utilities";
      description = "";
      buildType = "Simple";
    };
    components = {
      "util-exception" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.util)
        ];
      };
    };
  }