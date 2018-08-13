{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lens";
        version = "1.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lens/";
      url = "";
      synopsis = "Lenses, Folds and Traversals";
      description = "The combinators in @Control.Lens@ provide a highly generic toolbox for composing\nfamilies of getters, folds, isomorphisms, traversals, setters and lenses and their indexed variants.\n\n/Lens Families/\n\nFor a longer description of why you should care about lens families, and an overview of why we use 4\nparameters a, b, c, and d instead of just 2, see <http://comonad.com/reader/2012/mirrored-lenses/>.\n\nSometimes you won't need the flexibility those extra parameters afford you and you can use\n\n> type Simple f a b = f a a b b\n\nto describe a 'Simple' 'Setter', 'Simple' 'Traversal', 'Simple' 'Lens' or 'Simple' 'Iso'.\n\n/Avoiding Dependencies/\n\nNote: If you merely want your library to /provide/ lenses you may not\nhave to actually import /any/ lens library at all. For, say, a\n@'Simple' 'Lens' Bar Foo@, just export a function with the signature:\n\n> foo :: Functor f => (Foo -> f Foo) -> Bar -> f Bar\n\nand then you can compose it with other lenses using nothing more than @(.)@ from the Prelude.\n\n/Deriving Lenses/\n\nYou can derive lenses automatically for many data types using 'makeLenses', and if a\ncontainer is fully characterized by its lenses, you can use 'Representable' to\nautomatically derive 'Functor', 'Applicative', 'Monad', and 'Distributive'.";
      buildType = "Simple";
    };
    components = {
      "lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.parallel)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") (hsPkgs.ghc-prim);
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "templates" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
          ];
        };
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }