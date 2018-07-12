{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unbound-generics";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2015, Aleksey Kliger";
        maintainer = "aleksey@lambdageek.org";
        author = "Aleksey Kliger";
        homepage = "http://github.com/lambdageek/unbound-generics";
        url = "";
        synopsis = "Support for programming with names and binders using GHC Generics";
        description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and unbound-generics\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n@Unbound.Generics.LocallyNameless@ to get started.\n\nThis is an independent re-implementation of <http://hackage.haskell.org/package/unbound Unbound>\nbut using <http://www.haskell.org/ghc/docs/latest/html/libraries/base-4.7.0.1/GHC-Generics.html GHC.Generics>\ninstead of <http://hackage.haskell.org/package/RepLib RepLib>.\nSee the accompanying README for some porting notes.";
        buildType = "Simple";
      };
      components = {
        "unbound-generics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.profunctors
          ];
        };
        tests = {
          "test-unbound-generics" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.unbound-generics
            ];
          };
        };
      };
    }