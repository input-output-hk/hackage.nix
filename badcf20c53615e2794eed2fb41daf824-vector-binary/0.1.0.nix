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
        name = "vector-binary";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/vector-binary";
      url = "";
      synopsis = "Binary instances for vector types";
      description = "The library provides binary instances for boxed and unboxed vector types.\nThe code is based on the vector-binary-instances package but restricts\ninstances to monomorphic vector types.";
      buildType = "Simple";
    };
    components = {
      "vector-binary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.binary)
        ];
      };
    };
  }