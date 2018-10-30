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
      specVersion = "1.6";
      identifier = {
        name = "fixed-point-vector";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Unbox instances for the fixed-point package";
      description = "This package allows you to construct unboxed\nvectors of binary fixed-point numerals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fixed-point)
          (hsPkgs.vector)
        ];
      };
    };
  }