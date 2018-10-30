{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "primitive";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2009-2012";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://code.haskell.org/primitive";
      url = "";
      synopsis = "Primitive memory-related operations";
      description = "\nThis package provides various primitive memory-related operations.\n\nChanges in version 0.5.0.1\n\n* Disable array copying primitives for GHC 7.6.* and earlier\n\nChanges in version 0.5\n\n* New in \"Data.Primitive.MutVar\": @atomicModifyMutVar@\n\n* Efficient block fill operations: @setByteArray@, @setAddr@\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }