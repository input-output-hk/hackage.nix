{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reactive-glut";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/reactive-glut";
        url = "http://code.haskell.org/reactive-glut";
        synopsis = "Connects Reactive and GLUT";
        description = "This package contains an adapter that connects OpenGL/GLUT to the\nFRP library \\\"Reactive\\\".\n\nProject wiki page: <http://haskell.org/haskellwiki/reactive-glut>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        reactive-glut = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.vector-space
            hsPkgs.reactive
          ];
        };
      };
    }