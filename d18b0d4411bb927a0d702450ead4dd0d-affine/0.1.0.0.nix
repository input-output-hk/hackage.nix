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
        name = "affine";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Affine spaces (generalized)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "affine" = {
        depends  = [
          (hsPkgs.alg)
          (hsPkgs.base)
        ];
      };
    };
  }