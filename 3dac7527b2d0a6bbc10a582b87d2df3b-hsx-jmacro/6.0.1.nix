{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsx-jmacro";
          version = "6.0.1";
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
        hsx-jmacro = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsx
            hsPkgs.jmacro
            hsPkgs.mtl
            hsPkgs.pretty
          ];
        };
      };
    }