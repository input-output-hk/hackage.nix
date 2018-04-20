{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambdabot-haskell-plugins";
          version = "5.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "Don Stewart";
        homepage = "http://haskell.org/haskellwiki/Lambdabot";
        url = "";
        synopsis = "Lambdabot Haskell plugins";
        description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[check] Quick, check!\n\n[djinn] Derive implementations from types intuitinistically.\n\n[eval] Run Haskell code.\n\n[free] Theorems for free.\n\n[haddock] Find modules implementing a function.\n\n[hoogle] Search for functions by type using hoogle.\n\n[instances] Query instances of type classes.\n\n[pl] Produce point-less code.\n\n[pointful] Produce point-ful code.\n\n[pretty] Print code prettily.\n\n[source] Show implementations of standard functions.\n\n[type] Query type of expressions.\n\n[undo] Unfold do notation.\n\n[unmtl] Expand monad transformers stacks.";
        buildType = "Simple";
      };
      components = {
        lambdabot-haskell-plugins = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src-exts
            hsPkgs.lambdabot-core
            hsPkgs.lambdabot-reference-plugins
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.oeis
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.regex-tdfa
            hsPkgs.split
            hsPkgs.syb
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.arrows
            hsPkgs.data-memocombinators
            hsPkgs.hoogle
            hsPkgs.IOSpec
            hsPkgs.lambdabot-trusted
            hsPkgs.logict
            hsPkgs.MonadRandom
            hsPkgs.mueval
            hsPkgs.numbers
            hsPkgs.show
            hsPkgs.vector-space
            hsPkgs.HTTP
            hsPkgs.network
          ];
        };
      };
    }