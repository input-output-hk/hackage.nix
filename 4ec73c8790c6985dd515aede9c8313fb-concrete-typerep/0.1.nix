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
        name = "concrete-typerep";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "reiner.pope@gmail.com";
      author = "Reiner Pope";
      homepage = "";
      url = "";
      synopsis = "Binary and Hashable instances for TypeRep";
      description = "Binary and Hashable instances for TypeRep";
      buildType = "Simple";
    };
    components = {
      "concrete-typerep" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.hashable)
        ];
      };
    };
  }