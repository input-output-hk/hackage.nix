{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-parallel";
          version = "0.7.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2016 Mario Blazevic";
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
            hsPkgs.base
            hsPkgs.parallel
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ];
        };
      };
    }