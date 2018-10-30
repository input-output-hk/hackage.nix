{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      usevanlaarhoven = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "app-lens";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Kazutaka Matsuda, 2015";
      maintainer = "kztk@ecei.tohoku.ac.jp";
      author = "Kazutaka Matsuda";
      homepage = "https://bitbucket.org/kztk/app-lens";
      url = "";
      synopsis = "applicative (functional) bidirectional programming beyond composition chains";
      description = "A bidirectional transformation connects data in difference formats,\nmaintaining consistency amid separate updates. The \"lens\"\nprogramming language---with Kmett's Haskell lens package being\none of the most influentials---is a solution to this problem.\n\nMany lens implementations (including Kmett's Haskell library) only\nsupport the point-free style of programming. Though concise at times,\nthis style becomes less handy when programs get more complicated.\n\nThis module provides the infrastructure for programming complex\nbidirectional transformations, by representing lenses as functions\nthat are subject to the normal applicative-style programming.  For\nexample, let us consider the 'unlines' functions and to define a\nlens version of it. In our framework we can program through pattern\nmatching and explicit recursion as in normal functional programming.\n\n> unlinesF :: [L s String] -> L s String\n> unlinesF []     = new \"\"\n> unlinesF (x:xs) = catLineF x (unlinesF xs)\n>    where catLineF = lift2 catLineL\n\nHere, @lift2 :: Lens' (a,b) c -> (forall s. L s a -> L s b -> L s\nc)@ and @new :: a -> (forall s. L s a)@ lift lenses to functions.\nThe former is for binary lenses and the latter is for constant\nlenses.  We can then apply lenses as functions, alleviating the\nneed of specialized combinators. In the above, we omitted the\ndefinition of a primitive lens @catLineL :: Lens' (String, String)\nString@ that concatenates two strings with a newline in between.\n\nSimply unlifting ('unlift', 'unlift2', 'unliftT') such \"lens functions\"\ngives us the desired lenses.\n\n> unlinesL :: Lens' [String] String\n> unlinesL = unliftT unlinesF\n\nThe obtained lens works as expected.\n\n\n> >>> [\"banana\", \"orange\", \"apple\"] ^. unlinesL\n> \"banana\\norange\\napple\\n\"\n> >>> [\"banana\", \"orange\", \"apple\"] & unlinesL .~ \"Banana\\nOrange\\nApple\\n\"\n> [\"Banana\",\"Orange\",\"Apple\"]\n\n\nOne may prefer to define @unliftF@ with 'foldr'. Indeed, we can\nuse 'foldr' as below because @catLineF@ and @unlinesF@ are simply\nHaskell functions.\n\n> unliftF = foldr (lift2 catLineL) (new \"\")\n\nHere, the program is written in a point-free manner similar to that\nof the other lens frameworks. But note that this 'foldr' is just\nHaskell's 'foldr', instead of a special combinator for lenses.\n\nMore examples can be found at \\\"Examples\\\" in the source code\n<https://bitbucket.org/kztk/app-lens/downloads>.\n\n/Remark/.\nThe applicative-style programming is possible in our implementation\nbecause a function representation different from Kmett's is used for lenses.\nAs a result, when we program record-field access chains such as\n\n> src .^ l1 . l2\n> src & l1 . l2 .~ tgt'\n\nThe order of composition is inverted in our implementation.\n\n> src .^ unlift (lift l2 . lift l1)\n> src & unlift (lift l2 . lift l1) .~ tgt'\n\nThis difference causes slight inconvenience for record updates, but is\ncrucial in allowing the applicative-style lens programming we\naim for.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.lens)
        ];
      };
      benchmarks = {
        "compositions" = {
          depends  = [
            (hsPkgs.app-lens)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
        "eval" = {
          depends  = [
            (hsPkgs.app-lens)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }