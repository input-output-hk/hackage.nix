{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Boolean";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "http://code.haskell.org/~conal/code/Boolean";
        synopsis = "Generalized boolean ops";
        description = "Some classes for generalized boolean operations.\n\nCopyright 2009 Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        Boolean = {
          depends  = [ hsPkgs.base ];
        };
      };
    }