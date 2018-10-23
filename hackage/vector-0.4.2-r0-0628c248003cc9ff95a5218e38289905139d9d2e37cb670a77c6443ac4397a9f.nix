{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      enableassertions = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "vector";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008-2009";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://darcs.haskell.org/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient implementation of Int-indexed arrays with a powerful loop\nfusion framework.\n\nIt is structured as follows:\n\n[@Data.Vector@] boxed vectors of arbitrary types\n\n[@Data.Vector.Primitive@] unboxed vectors of primitive types as\ndefined by the @primitive@ package\n\n[@Data.Vector.Storable@] unboxed vectors of 'Storable' types\n\n[@Data.Vector.Generic@] generic interface to the vector types\n";
      buildType = "Simple";
    };
    components = {
      "vector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.primitive)
        ];
      };
    };
  }