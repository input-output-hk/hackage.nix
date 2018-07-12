{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "syntax-trees";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dom.orchard@gmail.com";
        author = "Dominic Orchard";
        homepage = "";
        url = "";
        synopsis = "Convert between different Haskell syntax trees.";
        description = "Provides an instance that translates\nhaskell-src-exts expression trees into Template Haskell expression\ntrees in a way that depends only on the haskell-src-exts syntax tree\nand agreement on the pretty-printed representation of\nHaskell between haskell-src-exts pretty-printer and\nTemplate Haskell quotations (as opposed to depending on\nboth TH and haskell-src-exts syntax tree representations).\n\nInstead of converting between data types,\nhaskell-src-exts syntax trees are pretty-printed and wrapped in\na TH quotation which is then interpreted as a Haskell program,\nyielding a TH Exp tree. Free variables in the haskell-src-exts tree are\npreserved by lifting them to TH splices prior to pretty-printing.\n";
        buildType = "Simple";
      };
      components = {
        "syntax-trees" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell-src-exts
            hsPkgs.template-haskell
            hsPkgs.uniplate
            hsPkgs.hint
          ];
        };
      };
    }