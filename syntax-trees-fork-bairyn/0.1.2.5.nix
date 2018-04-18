{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "syntax-trees-fork-bairyn";
          version = "0.1.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dom.orchard@gmail.com\n,ByronJohnsonFP@gmail.com";
        author = "Dominic Orchard\n,Byron Johnson";
        homepage = "";
        url = "";
        synopsis = "Convert between different Haskell syntax trees.  Bairyn's fork.";
        description = "This is a fork of Dominic Orchard's syntax-trees package that is patched\njust to build on Haskell's more modern ecosystem.\n\nProvides an instance that translates haskell-src-exts expression trees into\nTemplate Haskell expression trees in a way that depends only on the\nhaskell-src-exts syntax tree and agreement on the pretty-printed\nrepresentation of Haskell between haskell-src-exts pretty-printer and\nTemplate Haskell quotations (as opposed to depending on both TH and\nhaskell-src-exts syntax tree representations).\n\nInstead of converting between data types,\nhaskell-src-exts syntax trees are pretty-printed and wrapped in\na TH quotation which is then interpreted as a Haskell program,\nyielding a TH Exp tree. Free variables in the haskell-src-exts tree are\npreserved by lifting them to TH splices prior to pretty-printing.";
        buildType = "Simple";
      };
      components = {
        syntax-trees-fork-bairyn = {
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