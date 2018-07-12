{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fixed-vector";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Generic vectors with statically known size.";
        description = "Generic library for vectors with statically known\nsize. Implementation is based on\n<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>\nSame functions could be used to work with both ADT based vector like\n\n> data Vec3 a = a a a\n\nTuples are vectors too:\n\n>>> sum (1,2,3)\n6\n\nVectors which are represented internally by arrays are provided by\nlibrary. Both boxed and unboxed arrays are supported.\n\nLibrary is structured as follows:\n\n[@Data.Vector.Fixed@]\nGeneric API. It's suitable for both ADT-based vector like @Complex@\nand array-based ones.\n\n[@Data.Vector.Fixed.Cont@]\nContinuation based vectors. Internally all functions use them.\n\n[@Data.Vector.Fixed.Mutable@]\nType classes for array-based implementation and API for working with\nmutable state.\n\n[@Data.Vector.Fixed.Unboxed@]\nUnboxed vectors.\n\n[@Data.Vector.Fixed.Boxed@]\nBoxed vector which can hold elements of any type.\n\n[@Data.Vector.Fixed.Storable@]\nUnboxed vectors of @Storable@  types.\n\n[@Data.Vector.Fixed.Primitive@]\nUnboxed vectors based on pritimive package.\n\nChanges in 0.3.0.0\n\n* @Vector@ type class definition is moved to the @D.V.F.Cont@ module.\n\n* Indexing function restored.\n\n* @unfoldr@ added.\n\nChanges in 0.2.0.0\n\n* Continuation-based vector added.\n\n* Right fold added.\n\n* @tailWith@, @convertContinuation@, and @!@ from\n@Data.Vector.Fixed@ removed.\n\n* @Vector@ instance for tuples added.\n\nChanges in 0.1.2\n\n* @imap@, @imapM@, @ifoldl@, @ifoldM@, @zipWithM@, @izipWithM@\nfunctions are added.\n\n* @VectorN@ type class added.\n\nChanges in 0.1.1\n\n* @foldM@ and @tailWith@ added. Type synonyms for numbers up to 6 are\nadded. @Fun@ is reexported from @Data.Vector.Fixed@.";
        buildType = "Simple";
      };
      components = {
        "fixed-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.primitive
              hsPkgs.doctest
              hsPkgs.filemanip
            ];
          };
        };
      };
    }