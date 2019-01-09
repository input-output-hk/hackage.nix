{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fixed-vector"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generic vectors with statically known size.";
      description = "Generic library for vectors with statically known\nsize. Implementation is based on\n<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>\nSame functions could be used to work with both ADT based vector like\n\n> data Vec3 a = a a a\n\nTuples are vectors too:\n\n>>> sum (1,2,3)\n6\n\nVectors which are represented internally by arrays are provided by\nlibrary. Both boxed and unboxed arrays are supported.\n\nLibrary is structured as follows:\n\n[Data.Vector.Fixed]\nGeneric API. It's suitable for both ADT-based vector like Complex\nand array-based ones.\n\n[Data.Vector.Fixed.Cont]\nContinuation based vectors. Internally all functions use them.\n\n[Data.Vector.Fixed.Mutable]\nType classes for array-based implementation and API for working with\nmutable state.\n\n[Data.Vector.Fixed.Unboxed]\nUnboxed vectors.\n\n[Data.Vector.Fixed.Boxed]\nBoxed vector which can hold elements of any type.\n\n[Data.Vector.Fixed.Storable]\nUnboxed vectors of Storable  types.\n\n[Data.Vector.Fixed.Primitive]\nUnboxed vectors based on pritimive package.\n\n[Data.Vector.Fixed.Monomorphic]\nWrappers for monomorphic vectors\n\nChanges in 0.5.0.0\n\n* ContVec now behaves like normal vector. Arity type class is\nreworked. Id is removed.\n\n* Construction of vector reworked.\n\n* reverse, snoc, consV, fold and foldMap are added.\n\n* Type changing maps and zips are added.\n\n* Vector indexing with type level numbers is added.\n\n* Twan van Laarhoven's lens added. (element and elementTy)\n\n* Ord instances added to vector data types defined in the library.\n\nChanges in 0.4.4.0\n\n* Functor and Applicative instances are added to Id.\n\nChanges in 0.4.3.0\n\n* Typeable instance for S and Z added.\n\nChanges in 0.4.2.0\n\n* 1-tuple Only added.\n\n* fromList' and fromListM added.\n\n* apply functions from Arity type class generalized.\n\nChanges in 0.4.1.0\n\n* cons function added.\n\n* Getter to Fun data type added.\n\nChanges in 0.4.0.0\n\n* Wrapper for monomorphics vectors is added.\n\n* VecList is reimplemented as GADT and constructors are exported.\n\n* Constructor of ContVecT is exported\n\n* Empty ContVecT is implemented as empty.\n\n* Typeable, Foldable and Traversable instances are added where\nappropriate\n\nChanges in 0.3.0.0\n\n* Wrappers for monomorphic types added.\n\nChanges in 0.3.0.0\n\n* Vector type class definition is moved to the D.V.F.Cont module.\n\n* Indexing function restored.\n\n* unfoldr added.\n\nChanges in 0.2.0.0\n\n* Continuation-based vector added.\n\n* Right fold added.\n\n* tailWith, convertContinuation, and ! from\nData.Vector.Fixed removed.\n\n* Vector instance for tuples added.\n\nChanges in 0.1.2\n\n* imap, imapM, ifoldl, ifoldM, zipWithM, izipWithM\nfunctions are added.\n\n* VectorN type class added.\n\nChanges in 0.1.1\n\n* foldM and tailWith added. Type synonyms for numbers up to 6 are\nadded. Fun is reexported from Data.Vector.Fixed.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.primitive) ]; };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primitive)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
            ];
          };
        };
      };
    }