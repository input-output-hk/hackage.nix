{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-token-utils"; version = "0.0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman";
      homepage = "https://github.com/alanz/haskell-token-utils";
      url = "";
      synopsis = "Utilities to tie up tokens to an AST";
      description = "This library is currently experimental.\n\nThe GHC part is solid, since it has been migrated from HaRe.\n\nThe haskell-src-exts one is still in progress\n\nThis package provides a set of data structures to\nmanage the tie-up between a Haskell AST and the\nunderlying tokens, such that it explicitly\ncaptures the Haskell layout rules and original\nformatting. As a result changes can be made to\nthe AST and the tokens will be updated so that\nthe source file can be recreated with only the\nupdated parts changed. This makes it easier to\nwrite Haskell source code modification\nprogrammes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dual-tree)
          (hsPkgs.semigroups)
          (hsPkgs.monoid-extras)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.rosezipper)
          (hsPkgs.ghc)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.syb)
          (hsPkgs.haskell-src-exts)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Diff)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.rosezipper)
            (hsPkgs.dual-tree)
            (hsPkgs.semigroups)
            (hsPkgs.monoid-extras)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.kure)
            (hsPkgs.syb)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-prim)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.ghc-mod)
            (hsPkgs.haskell-src-exts)
            ];
          };
        };
      };
    }