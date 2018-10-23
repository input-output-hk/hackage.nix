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
        name = "primitive";
        version = "0.5.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2009-2012";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "https://github.com/haskell/primitive";
      url = "";
      synopsis = "Primitive memory-related operations";
      description = "This package provides various primitive memory-related operations.";
      buildType = "Simple";
    };
    components = {
      "primitive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }