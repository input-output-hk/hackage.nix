{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lazy-hash";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) jsagemue \$ uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "";
        url = "";
        synopsis = "Identifiers for not-yet-computed values";
        description = "This package gives a way to assign values with largely\nunique keys, without ever actually spending the time needed to\ncompute the value. The basic idea is to hash the source code of some\nexpression (in other words, its unnormalised AST), rather than\nthe value (its normal form).";
        buildType = "Simple";
      };
      components = {
        "lazy-hash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.constrained-categories
            hsPkgs.hashable
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
            hsPkgs.tagged
            hsPkgs.vector-space
          ];
        };
      };
    }