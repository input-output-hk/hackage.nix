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
        name = "sparsebit";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kya@pdx.edu";
      author = "Ahn, Ki Yung";
      homepage = "";
      url = "";
      synopsis = "Sparse bitmaps for pattern match coverage";
      description = "Sparse bitmaps for pattern match coverage";
      buildType = "Simple";
    };
    components = {
      "sparsebit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }