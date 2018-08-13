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
      specVersion = "1.8";
      identifier = {
        name = "universe";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Daniel Wagner";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Classes for types where we know all the values";
      description = "A small package, in the spirit of data-default, which allows the munging of finite and recursively enumerable types";
      buildType = "Simple";
    };
    components = {
      "universe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.void)
        ];
      };
    };
  }