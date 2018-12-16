{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fixed-point-vector-space";
        version = "0.5.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "vector-space instances for the fixed-point package";
      description = "This package provides instances of VectorSpace,\nAffineSpace, etc. for the fixed-point package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fixed-point)
          (hsPkgs.vector-space)
        ];
      };
    };
  }