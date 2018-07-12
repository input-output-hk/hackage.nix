{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-task";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Paul Liu <paul@thev.net>";
        author = "Paul Liu";
        homepage = "http://github.com/ninegua/monad-task";
        url = "";
        synopsis = "A monad transformer that turns event processing into co-routine programming.";
        description = "Task monad transformer can help refactor event and callback\nheavy programs into monads via co-routines. The idea is loosely\nbased on /Combining Events And Threads For Scalable Network Services/,\nby Peng Li and Steve Zdancewic, in /PLDI/, 2007.\n(<http://www.cis.upenn.edu/~stevez/papers/abstracts.html#LZ07>), but\nwith deterministic and co-operative lightweight threads, also known as\nco-routines, so that the base monad can be anything ranging from IO\nto state monads, or your favorite monad transformer stack.";
        buildType = "Simple";
      };
      components = {
        "monad-task" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }