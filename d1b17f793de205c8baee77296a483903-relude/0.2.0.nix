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
      specVersion = "1.24";
      identifier = {
        name = "relude";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2016 Stephen Diehl, 2016-2018 Serokell, 2018 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Stephen Diehl, @serokell, Kowainik";
      homepage = "https://github.com/kowainik/relude";
      url = "";
      synopsis = "Custom prelude from Kowainik";
      description = "== Goals\n\n* __Avoid all [partial functions](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)__\n(like @head :: [a] -> a@). The types of partial functions lie about their\nbehavior and usage of such functions can lead to the unexpected bugs. Though\nyou can still use some unsafe functions from @Relude.Unsafe@ module, but they\nare not exported by default.\n\n* __Type-safety__. We like to make invalid states unrepresantable. And if it's\npossible to express this concept through the types then we will do it.\n/Example:/ @ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @\n\n* __Performance.__ Prefer @Text@ over @[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@,\nuse spaceleak-free functions (like our custom @sum@ and @product@).\n\n* __Minimalism__ (low number of dependencies). We don't force users of @relude@ to\nstick to some specific lens or text formatting or logging library.\n\n* __Convenience__ (like lifted to @MonadIO@ functions, more reexports). But we\nwant to bring common types and functions (like @containers@ and @bytestrng@)\ninto scope because they are used in almost every application anyways.\n\n* __Provide excellent documentation.__\n\n1. Tutorial\n\n2. Migration guide from @Prelude@\n\n3. Haddock with examples for (almost) every function\n(all examples are tested with [`doctest`](http://hackage.haskell.org/package/doctest))\n\n4. Documentation regarding [internal module structure]((http://hackage.haskell.org/package/relude/docs/Relude.html))\n\n5. @relude@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@\n\n* __User-friendliness.__ Ability to quickly migrate to @relude@ if you're familiar\nwith the common libraries like @text@ and @containers@.\n\n* __Exploration.__ Experiment with new ideas and proposals without introducing\nbreaking changes.";
      buildType = "Simple";
    };
    components = {
      "relude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "relude-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.relude)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
        };
        "relude-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
      };
      benchmarks = {
        "relude-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.relude)
            (hsPkgs.containers)
            (hsPkgs.gauge)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }