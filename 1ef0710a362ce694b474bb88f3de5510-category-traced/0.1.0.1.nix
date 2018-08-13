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
        name = "category-traced";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Traced monoidal categories";
      description = "";
      buildType = "Simple";
    };
    components = {
      "category-traced" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.categories)
        ];
      };
    };
  }