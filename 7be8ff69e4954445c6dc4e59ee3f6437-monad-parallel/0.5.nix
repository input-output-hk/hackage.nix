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
      specVersion = "1.2";
      identifier = {
        name = "monad-parallel";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "http://trac.haskell.org/SCC/wiki/monad-parallel";
      url = "";
      synopsis = "Parallel execution of monadic computations";
      description = "This package defines classes of monads that can perform multiple executions in parallel and combine their results. For\nany monad that's an instance of the class, the package re-implements a subset of the Control.Monad interface, but with\nparallel execution.";
      buildType = "Simple";
    };
    components = {
      "monad-parallel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.transformers)
        ];
      };
    };
  }