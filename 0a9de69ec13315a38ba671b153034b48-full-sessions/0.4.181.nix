{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "full-sessions";
          version = "0.4.181";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "keigo.imai@gmail.com";
        author = "Keigo IMAI";
        homepage = "http://www.agusa.i.is.nagoya-u.ac.jp/person/sydney/full-sessions.html";
        url = "";
        synopsis = "yet another implementation of session types which does not require annotations";
        description = "This library defines a @Session@ monad, which provides static checking of\nsafe and consistent use of communication channels according to protocols.\nIt requires almost no type- and term- annotations.\nAlternatives are: the simple-sessions package\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/simple-sessions>) and the sessions\npackage  (<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/sessions>).";
        buildType = "Simple";
      };
      components = {
        full-sessions = {
          depends  = [ hsPkgs.ghc ] ++ [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }