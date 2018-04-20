{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "haskell-src-exts-qq";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mathieu Boespflug <mboes@tweag.net>";
        author = "Mathieu Boespflug";
        homepage = "";
        url = "";
        synopsis = "A quasiquoter for haskell-src-exts.";
        description = "Allows one to write programs that generate Haskell programs much\nmore concisely and legibly. This package supports:\n\n* term antiquotations,\n* antiquoting pattern variables in patterns,\n* antiquoting bound names,\n* antiquotations in types.\n\nSome types of splicing use custom syntax due to historical\nreasons. This may change in future releases.";
        buildType = "Simple";
      };
      components = {
        haskell-src-exts-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.haskell-src-exts
            hsPkgs.haskell-src-meta
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts-qq
              hsPkgs.haskell-src-exts
              hsPkgs.hspec
            ];
          };
        };
      };
    }