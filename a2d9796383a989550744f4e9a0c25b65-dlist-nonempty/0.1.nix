{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dlist-nonempty";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2006-2009 Don Stewart, 2013-2016 Sean Leather, 2017 Oleg Grenrus";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Don Stewart, Oleg  Grenrus";
        homepage = "https://github.com/phadej/dlist-nonempty";
        url = "";
        synopsis = "Non-empty difference lists";
        description = "Difference lists are a list-like type supporting O(1) append. This is\nparticularly useful for efficient logging and pretty printing (e.g. with the\nWriter monad), where list append quickly becomes too expensive.\n\n> DList a         ≅ [a] -> [a]\n> NonEmptyDList a ≅ [a] -> NonEmpty a\n\nFor empty variant, @DList@, see <http://hackage.haskell.org/package/dlist dlist package>.";
        buildType = "Simple";
      };
      components = {
        dlist-nonempty = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.semigroupoids
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.dlist-nonempty
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.dlist
              hsPkgs.dlist-nonempty
              hsPkgs.dlist-instances
              hsPkgs.criterion
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
          };
        };
      };
    }