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
        name = "st2";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "copyright (c) 2018 chessai, copyright (c) 2018 Matt Noonan";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/st2.git";
      url = "";
      synopsis = "shared heap regions between local mutable state threads";
      description = "This library implements the ST2 monad, a type using GDP (ghosts of departed proofs)\nto define shared regions of memory between local mutable state threads. This allows\nus to define a region of the heap in more minute contours, with each state thread\nhaving explicit access to regions in memory. This is achieved using the function `runST2`,\nwhich in effects lets the user run a computation that makes use of two partially-overlapping\nmemory regions. Within that computation, the user can run sub-computations bound to one or\nthe other memory region. Furthermore, a sub-computation can move any variable that it owns\ninto the common overlap via `share`.\n\nAn example is shown in the documentation, where one sub-computation creates two cells: one\nprivate, and the other shared. A second sub-computation has unconstrained access to the\nshared cell. Yet even though the private reference is also in scope during the second\nsub-computation, any attempts to access it there will fail to compile.";
      buildType = "Simple";
    };
    components = {
      "st2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gdp)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
        ];
      };
    };
  }