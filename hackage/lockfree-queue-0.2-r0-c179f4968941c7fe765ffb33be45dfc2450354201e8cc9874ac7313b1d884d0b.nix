{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lockfree-queue";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan R. Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree-queue/wiki";
      url = "";
      synopsis = "Michael and Scott lock-free queues.";
      description = "Michael and Scott queues are described in their PODC 1996 paper:\n\n<http://dl.acm.org/citation.cfm?id=248052.248106>\n\nThese are single-ended concurrent queues based on a singlly linked\nlist and using atomic CAS instructions to swap the tail pointers.\nAs a well-known efficient algorithm they became the basis for Java's\n@ConcurrentLinkedQueue@.";
      buildType = "Simple";
    };
    components = {
      "lockfree-queue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.IORefCAS)
          (hsPkgs.abstract-deque)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test-lockfree-queue" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.IORefCAS)
            (hsPkgs.abstract-deque)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }