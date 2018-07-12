{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ty";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/ty";
        url = "";
        synopsis = "Typed type representations and equality proofs";
        description = "Typed type representations and equality proofs\n\nProject wiki page: <http://haskell.org/haskellwiki/ty>\n\nCopyright 2009-2012 Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        "ty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }