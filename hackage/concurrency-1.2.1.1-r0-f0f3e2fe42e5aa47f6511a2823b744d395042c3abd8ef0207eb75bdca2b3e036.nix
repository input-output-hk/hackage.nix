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
        name = "concurrency";
        version = "1.2.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Typeclasses, functions, and data types for concurrency and STM.";
      description = "A typeclass abstraction over much of Control.Concurrent (and some\nextras!). If you're looking for a general introduction to Haskell\nconcurrency, you should check out the excellent Parallel and\nConcurrent Programming in Haskell, by Simon Marlow. If you are\nalready familiar with concurrent Haskell, just change all the\nimports from Control.Concurrent.* to Control.Concurrent.Classy.* and\nfix the type errors.";
      buildType = "Simple";
    };
    components = {
      "concurrency" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.atomic-primops)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
    };
  }