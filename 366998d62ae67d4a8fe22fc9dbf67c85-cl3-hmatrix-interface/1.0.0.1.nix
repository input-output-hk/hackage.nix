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
        name = "cl3-hmatrix-interface";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Nathan Waivio";
      maintainer = "Nathan Waivio <nathan.waivio@gmail.com>";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/cl3-hmatrix-interface";
      url = "";
      synopsis = "Interface to/from Cl3 and HMatrix.";
      description = "Haskell Library implementing standard interface functions for the Algebra of Physical Space Cl(3,0) and HMatrix";
      buildType = "Simple";
    };
    components = {
      "cl3-hmatrix-interface" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cl3)
          (hsPkgs.hmatrix)
        ];
      };
    };
  }