{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "vector"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008-2011";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://code.haskell.org/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient implementation of Int-indexed arrays (both mutable\nand immutable), with a powerful loop fusion optimization framework .\n\nIt is structured as follows:\n\n[@Data.Vector@] Boxed vectors of arbitrary types.\n\n[@Data.Vector.Unboxed@] Unboxed vectors with an adaptive\nrepresentation based on data type families.\n\n[@Data.Vector.Storable@] Unboxed vectors of 'Storable' types.\n\n[@Data.Vector.Primitive@] Unboxed vectors of primitive types as\ndefined by the @primitive@ package. @Data.Vector.Unboxed@ is more\nflexible at no performance cost.\n\n[@Data.Vector.Generic@] Generic interface to the vector types.\n\nThere is also a (draft) tutorial on common uses of vector.\n\n* <http://haskell.org/haskellwiki/Numeric_Haskell:_A_Vector_Tutorial>\n\nPlease use the project trac to submit bug reports and feature\nrequests.\n\n* <http://trac.haskell.org/vector>\n\nChanges in version 0.7.1\n\n* New functions: @iterateN@, @splitAt@\n\n* New monadic operations: @generateM@, @sequence@, @foldM_@ and\nvariants\n\n* New functions for copying potentially overlapping arrays: @move@,\n@unsafeMove@\n\n* Specialisations of various monadic operations for primitive monads\n\n* Unsafe casts for Storable vectors\n\n* Efficiency improvements\n\nChanges in version 0.7.0.1\n\n* Dependency on package ghc removed\n\nChanges in version 0.7\n\n* New functions for freezing, copying and thawing vectors: @freeze@,\n@thaw@, @unsafeThaw@ and @clone@\n\n* @newWith@ and @newUnsafeWith@ on mutable vectors replaced by\n@replicate@\n\n* New function: @concat@\n\n* New function for safe indexing: @(!?)@\n\n* @Monoid@ instances for all vector types\n\n* Significant recycling and fusion improvements\n\n* Bug fixes\n\n* Support for GHC 7.0\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }