{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tree-diff";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Oleg Grenrus";
        maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/tree-diff";
        url = "";
        synopsis = "Diffing of (expression) trees.";
        description = "Common diff algorithm works on list structures:\n\n@\ndiff :: Eq a => [a] -> [a] -> [Edit a]\n@\n\nThis package works on trees.\n\n@\ntreeDiff :: Eq a => Tree a -> Tree a -> Edit (EditTree a)\n@\n\nThis package also provides a way to diff arbitrary ADTs,\nusing @Generics@-derivable helpers.\n\nThis package differs from <http://hackage.haskell.org/package/gdiff gdiff>,\nin a two ways: @tree-diff@ doesn't have patch function,\nand the \"edit-script\" is a tree itself, which is useful for pretty-printing.\n\n@\n>>> prettyEditExpr \$ ediff (Foo 42 [True, False] \"old\") (Foo 42 [False, False, True] \"new\")\nFoo\n{fooBool = [-True, +False, False, +True],\nfooInt = 42,\nfooString = -\"old\" +\"new\"}\n@";
        buildType = "Simple";
      };
      components = {
        tree-diff = {
          depends  = ([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.ansi-wl-pprint
            hsPkgs.ansi-terminal
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.generics-sop
            hsPkgs.hashable
            hsPkgs.MemoTrie
            hsPkgs.parsec
            hsPkgs.parsers
            hsPkgs.pretty
            hsPkgs.QuickCheck
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.uuid-types
            hsPkgs.vector
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.void
            hsPkgs.nats
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tree-diff
              hsPkgs.base-compat
              hsPkgs.QuickCheck
              hsPkgs.ansi-terminal
              hsPkgs.ansi-wl-pprint
              hsPkgs.parsec
              hsPkgs.trifecta
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }