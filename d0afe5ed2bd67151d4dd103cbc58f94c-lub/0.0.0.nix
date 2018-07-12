{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lub";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/lub";
        url = "http://code.haskell.org/lub";
        synopsis = "least upper bounds -- information merging";
        description = "Lub is an experiment in computing least upper information bounds on\n(partially defined) functional values.  It provides a 'lub' function\nthat is consistent with the 'unamb' operator but has a more liberal\nprecondition.  Where 'unamb' requires its arguments to equal when\nneither is bottom, 'lub' is able to synthesize a value from the\npartial information contained in both of its arguments.\n\nProject wiki page: <http://haskell.org/haskellwiki/lub>\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        "lub" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unamb
          ];
        };
      };
    }