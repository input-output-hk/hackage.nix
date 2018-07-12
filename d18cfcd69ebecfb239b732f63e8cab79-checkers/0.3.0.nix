{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "checkers";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/checkers";
        url = "http://code.haskell.org/checkers";
        synopsis = "Check properties on standard classes and data structures.";
        description = "''Checkers'' wraps up the expected properties associated with various\nstandard type classes as QuickCheck properties.  Also some morphism\nproperties.  It also provides arbitrary instances and generator combinators\nfor common data types.\n\nProject wiki page: <http://haskell.org/haskellwiki/checkers>\n\n&#169; 2008-2013 by Conal Elliott; BSD3 license.\n\nContributions from: Thomas Davie.";
        buildType = "Simple";
      };
      components = {
        "checkers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.array
          ];
        };
      };
    }