{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reactive-fieldtrip";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/project-foo";
        url = "http://code.haskell.org/project-foo";
        synopsis = "Connect Reactive and FieldTrip";
        description = "This library connects ''Reactive'' (a functional reactive\nprogramming library) and ''FieldTrip'' (a functional 3D library).\n\nProject wiki page: <http://haskell.org/haskellwiki/project-foo>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        reactive-fieldtrip = {
          depends  = [
            hsPkgs.base
            hsPkgs.reactive
            hsPkgs.reactive-glut
            hsPkgs.FieldTrip
          ];
        };
      };
    }