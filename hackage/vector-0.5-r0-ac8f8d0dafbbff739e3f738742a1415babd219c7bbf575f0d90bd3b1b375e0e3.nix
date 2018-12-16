{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "vector";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008-2010";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://code.haskell.org/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient implementation of Int-indexed arrays with a powerful loop\nfusion framework.\n\nIt is structured as follows:\n\n[@Data.Vector@] Boxed vectors of arbitrary types.\n\n[@Data.Vector.Unboxed@] Unboxed vectors with an adaptive\nrepresentation based on data type families.\n\n[@Data.Vector.Storable@] Unboxed vectors of 'Storable' types.\n\n[@Data.Vector.Primitive@] Unboxed vectors of primitive types as\ndefined by the @primitive@ package. @Data.Vector.Unboxed@ is more\nflexible at no performance cost.\n\n[@Data.Vector.Generic@] Generic interface to the vector types.\n\nChanges since version 0.4.2\n\n* Unboxed vectors of primitive types and tuples\n\n* Redesigned interface between mutable and immutable vectors (now\nwith the popular @unsafeFreeze@ primitive)\n\n* Many new combinators\n\n* Significant performance improvements\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.primitive)
        ];
      };
    };
  }