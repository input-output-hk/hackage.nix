{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      newopengl = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vect-opengl";
          version = "0.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2010 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "OpenGL support for the `vect' low-dimensional linear algebra library.";
        description = "OpenGL support for the `vect' low-dimensional linear algebra library.";
        buildType = "Custom";
      };
      components = {
        vect-opengl = {
          depends  = ([ hsPkgs.vect ] ++ [
            hsPkgs.base
          ]) ++ [ hsPkgs.OpenGL ];
        };
      };
    }