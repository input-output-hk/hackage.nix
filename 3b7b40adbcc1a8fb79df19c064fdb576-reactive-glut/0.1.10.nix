{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reactive-glut";
          version = "0.1.10";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/reactive-glut";
        url = "http://code.haskell.org/reactive-glut";
        synopsis = "Connects Reactive and GLUT";
        description = "This package contains an adapter that connects OpenGL/GLUT to the\nFRP library \\\"Reactive\\\".\n\nProject wiki page: <http://haskell.org/haskellwiki/reactive-glut>\n\n&#169; 2008 by Conal Elliott; BSD3 license.\n\nWith contributions from Andy Gill, David Sankel, Eyal Lotem, Claus Reinke,\nAchim Schneider, and Alexander Göransson.";
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