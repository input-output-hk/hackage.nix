{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "yamemo";
        version = "0.4.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nobsun@sampou.org";
      author = "Nobuo Yamashita";
      homepage = "";
      url = "";
      synopsis = "Simple memoisation function";
      description = "This module provides yet another simple memoisation with simple table operations (only lookup and insert).";
      buildType = "Simple";
    };
    components = {
      "yamemo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }