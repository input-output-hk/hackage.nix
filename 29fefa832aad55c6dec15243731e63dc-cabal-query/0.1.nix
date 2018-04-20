{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-query";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Max Desyatov";
        maintainer = "Max Desyatov <explicitcall at gmail.com>";
        author = "Max Desyatov";
        homepage = "http://github.com/explicitcall/cabal-query";
        url = "";
        synopsis = "Helpers for quering .cabal files or hackageDB's 00-index.tar";
        description = "This package was written to assist you at finding a set of packages,\nwhich satisfy your needs.  At the moment it doesn't have a standalone executable,\nbut you can do the queries from your Haskell code.";
        buildType = "Simple";
      };
      components = {
        cabal-query = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.derive
            hsPkgs.Cabal
            hsPkgs.MissingH
            hsPkgs.uniplate
            hsPkgs.bytestring
            hsPkgs.tar
            hsPkgs.ghc
          ];
        };
      };
    }