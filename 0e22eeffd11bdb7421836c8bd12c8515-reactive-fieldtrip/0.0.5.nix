{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reactive-fieldtrip";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/reactive-fieldtrip";
        url = "http://code.haskell.org/reactive-fieldtrip";
        synopsis = "Connect Reactive and FieldTrip";
        description = "This library supports functionally programming reactive, animated, 3D\ngraphics.  It connects ''Reactive'' (a functional reactive programming\nlibrary) and ''FieldTrip'' (a functional 3D library).\n\nProject wiki page: <http://haskell.org/haskellwiki/reactive-fieldtrip>\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        "reactive-fieldtrip" = {
          depends  = [
            hsPkgs.base
            hsPkgs.reactive
            hsPkgs.reactive-glut
            hsPkgs.FieldTrip
            hsPkgs.vector-space
          ];
        };
      };
    }