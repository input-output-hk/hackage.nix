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
      specVersion = "1.10";
      identifier = {
        name = "monad-lgbt";
        version = "0.0.2";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Michal J. Gajda <mjgajda@gmail.com>";
      author = "Michal J. Gajda <mjgajda@gmail.com>";
      homepage = "https://github.com/mgajda/monad-lgbt#readme";
      url = "";
      synopsis = "Monad transformers for combining local and global state.";
      description = "This is library providing a nice typeclass interface for monads with two different states: local and global. Local state is backtraced whenever intervening monad transformer backtracks. Global state is preserved across all backtracing. It provides nice, classy interface for monads with backtracking/backjumping/continuations.";
      buildType = "Simple";
    };
    components = {
      "monad-lgbt" = {
        depends  = [
          (hsPkgs.logict)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
          (hsPkgs.deepseq)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.logict)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }