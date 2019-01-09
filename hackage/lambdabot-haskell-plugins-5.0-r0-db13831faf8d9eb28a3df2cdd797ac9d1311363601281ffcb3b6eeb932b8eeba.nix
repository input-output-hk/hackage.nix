{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-haskell-plugins"; version = "5.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Lambdabot Haskell plugins";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[check] Quick, check!\n[djinn] Derive implementations from types intuitinistically.\n[eval] Run Haskell code.\n[free] Theorems for free.\n[haddock] Find modules implementing a function.\n[hoogle] Search for functions by type using hoogle.\n[instances] Query instances of type classes.\n[pl] Produce point-less code.\n[pointful] Produce point-ful code.\n[pretty] Print code prettily.\n[source] Show implementations of standard functions.\n[type] Query type of expressions.\n[undo] Unfold do notation.\n[unmtl] Expand monad transformers stacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.lambdabot-core)
          (hsPkgs.lambdabot-reference-plugins)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.oeis)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
          (hsPkgs.regex-tdfa)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.arrows)
          (hsPkgs.data-memocombinators)
          (hsPkgs.hoogle)
          (hsPkgs.IOSpec)
          (hsPkgs.lambdabot-trusted)
          (hsPkgs.logict)
          (hsPkgs.MonadRandom)
          (hsPkgs.mueval)
          (hsPkgs.numbers)
          (hsPkgs.show)
          (hsPkgs.vector-space)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          ];
        };
      };
    }