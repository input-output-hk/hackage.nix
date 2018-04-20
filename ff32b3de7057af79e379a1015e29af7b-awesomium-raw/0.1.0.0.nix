{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "awesomium-raw";
          version = "0.1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2012 Maksymilian Owsianny";
        maintainer = "Maksymilian.Owsianny+AwesomiumRaw@gmail.com";
        author = "Maksymilian Owsianny";
        homepage = "";
        url = "";
        synopsis = "Low-level Awesomium bindings.";
        description = "This package contains raw bindings to Awesomium\n(<http://awesomium.com>).\n\nFor more user friendly, high-level bindings see\nhere\n(<http://hackage.haskell.org/package/awesomium>).\n\nAlso, if you plan to integrate Awesomium with\nGLUT you can check out this package\n(<http://hackage.haskell.org/package/awesomium-glut>).";
        buildType = "Simple";
      };
      components = {
        awesomium-raw = {
          depends  = [ hsPkgs.base ];
          libs = [
            pkgs."awesomium-1.6.5"
          ];
        };
      };
    }