{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-diff"; version = "0.1"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2017-2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/tree-diff";
      url = "";
      synopsis = "Diffing of (expression) trees.";
      description = "Common diff algorithm works on list structures:\n\n@\ndiff :: Eq a => [a] -> [a] -> [Edit a]\n@\n\nThis package works on trees.\n\n@\ntreeDiff :: Eq a => Tree a -> Tree a -> Edit (EditTree a)\n@\n\nThis package also provides a way to diff arbitrary ADTs,\nusing @Generics@-derivable helpers.\n\nThis package differs from <http://hackage.haskell.org/package/gdiff gdiff>,\nin a two ways: @tree-diff@ doesn't have patch function,\nand the \"edit-script\" is a tree itself, which is useful for pretty-printing.\n\n@\n>>> prettyEditExpr \$ ediff (Foo 42 [True, False] \"old\") (Foo 42 [False, False, True] \"new\")\nFoo\n\\  {fooBool = [-True, +False, False, +True],\n\\   fooInt = 42,\n\\   fooString = -\"old\" +\"new\"}\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring-builder)
          (hsPkgs.hashable)
          (hsPkgs.parsers)
          (hsPkgs.QuickCheck)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid-types)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.5") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs.generic-deriving)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
          (hsPkgs.nats)
          (hsPkgs.transformers)
          (hsPkgs.void)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.tree-diff)
            (hsPkgs.trifecta)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.5") (hsPkgs.ghc-prim);
          };
        };
      };
    }