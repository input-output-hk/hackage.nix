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
        name = "hsx-jmacro";
        version = "7.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "hsx+jmacro support";
      description = "HSX allows for the use of literal XML in Haskell program text. JMacro allows for the use of javascript-syntax for generating javascript in Haskell. This library makes it easy to embed JMacro generated javascript in HSX templates.";
      buildType = "Simple";
    };
    components = {
      "hsx-jmacro" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.happstack-hsp)
          (hsPkgs.hsx)
          (hsPkgs.jmacro)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.text)
        ];
      };
    };
  }