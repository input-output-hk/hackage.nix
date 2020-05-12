{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lockfree-queue"; version = "0.2.0.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."IORefCAS" or (errorHandler.buildDepError "IORefCAS"))
          (hsPkgs."abstract-deque" or (errorHandler.buildDepError "abstract-deque"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          ];
        buildable = true;
        };
      tests = {
        "test-lockfree-queue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."IORefCAS" or (errorHandler.buildDepError "IORefCAS"))
            (hsPkgs."abstract-deque" or (errorHandler.buildDepError "abstract-deque"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            ];
          buildable = true;
          };
        };
      };
    }