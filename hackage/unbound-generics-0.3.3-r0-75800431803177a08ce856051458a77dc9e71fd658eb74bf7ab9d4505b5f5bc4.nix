{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unbound-generics";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2018, Aleksey Kliger";
      maintainer = "aleksey@lambdageek.org";
      author = "Aleksey Kliger";
      homepage = "http://github.com/lambdageek/unbound-generics";
      url = "";
      synopsis = "Support for programming with names and binders using GHC Generics";
      description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and unbound-generics\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n@Unbound.Generics.LocallyNameless@ to get started.\n\nThis is an independent re-implementation of <http://hackage.haskell.org/package/unbound Unbound>\nbut using <https://hackage.haskell.org/package/base/docs/GHC-Generics.html GHC.Generics>\ninstead of <http://hackage.haskell.org/package/RepLib RepLib>.\nSee the accompanying README for some porting notes.";
      buildType = "Simple";
    };
    components = {
      "unbound-generics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.profunctors)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "test-unbound-generics" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.unbound-generics)
          ];
        };
      };
      benchmarks = {
        "benchmark-unbound-generics" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.unbound-generics)
          ] ++ pkgs.lib.optional (compiler.isGhc && false) (hsPkgs.unix)) ++ (if compiler.isGhc && false || compiler.isGhc && false
            then [
              (hsPkgs.deepseq-generics)
            ]
            else [ (hsPkgs.deepseq) ]);
        };
      };
    };
  }