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
      specVersion = "1.2.3";
      identifier = {
        name = "vector";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008-2010";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://code.haskell.org/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient implementation of Int-indexed arrays (both mutable\nand immutable), with a powerful loop fusion optimization framework .\n\nIt is structured as follows:\n\n[@Data.Vector@] Boxed vectors of arbitrary types.\n\n[@Data.Vector.Unboxed@] Unboxed vectors with an adaptive\nrepresentation based on data type families.\n\n[@Data.Vector.Storable@] Unboxed vectors of 'Storable' types.\n\n[@Data.Vector.Primitive@] Unboxed vectors of primitive types as\ndefined by the @primitive@ package. @Data.Vector.Unboxed@ is more\nflexible at no performance cost.\n\n[@Data.Vector.Generic@] Generic interface to the vector types.\n\nThere is also a (draft) tutorial on common uses of vector.\n\n* <http://haskell.org/haskellwiki/Numeric_Haskell:_A_Vector_Tutorial>\n\nPlease use the project trac to submit bug reports and feature\nrequests.\n\n* <http://trac.haskell.org/vector>\n\nChanges since version 0.5\n\n* More efficient representation of @Storable@ vectors\n\n* Block copy operations used when possible\n\n* @Typeable@ and @Data@ instances\n\n* Monadic combinators (@replicateM@, @mapM@ etc.)\n\n* Better support for recycling (see @create@ and @modify@)\n\n* Performance improvements\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.primitive)
        ];
      };
    };
  }