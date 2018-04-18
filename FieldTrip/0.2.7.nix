{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "FieldTrip";
          version = "0.2.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 by Conal Elliott and Andy Gill";
        maintainer = "conal@conal.net, andygill@ku.edu";
        author = "Conal Elliott and Andy Gill";
        homepage = "http://haskell.org/haskellwiki/FieldTrip";
        url = "http://code.haskell.org/FieldTrip";
        synopsis = "Functional 3D";
        description = "FieldTrip is a library for functional 3D geometry\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/FieldTrip>\n\n&#169; 2008 by Andy Gill and Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        FieldTrip = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.TypeCompose
            hsPkgs.MemoTrie
            hsPkgs.vector-space
            hsPkgs.graphicsFormats
          ];
        };
      };
    }