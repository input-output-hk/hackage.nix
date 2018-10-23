{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "VecN";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "0slemi0@gmail.com";
      author = "Andras Slemmer";
      homepage = "";
      url = "";
      synopsis = "a simple peano-indexed vector type";
      description = "a simple peano-indexed vector type, some instances and functions";
      buildType = "Simple";
    };
    components = {
      "VecN" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.peano)
        ];
      };
    };
  }