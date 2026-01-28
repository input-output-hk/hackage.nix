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
      specVersion = "3.0";
      identifier = { name = "fixed-vector"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generic vectors with statically known size.";
      description = "Generic library for vectors with statically known\nsize. Implementation is based on\n<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>\nSame functions could be used to work with both ADT based vector like\n\n> data Vec3 a = a a a\n\nTuples are vectors too:\n\n>>> sum (1,2,3)\n6\n\nVectors which are represented internally by arrays are provided by\nlibrary. Both boxed and unboxed arrays are supported.\n\nLibrary is structured as follows:\n\n* __Data.Vector.Fixed__:\nGeneric API. It's suitable for both ADT-based vector like Complex\nand array-based ones.\n\n* __Data.Vector.Fixed.Cont__:\nContinuation based vectors. Internally all functions use them.\n\n* __Data.Vector.Fixed.Unboxed__:\nUnboxed vectors which select best representation using types.\n\n* __Data.Vector.Fixed.Strict__:\nStrict boxed vector which can hold elements of any type.\n\n* __Data.Vector.Fixed.Boxed__:\nLazy boxed vector which can hold elements of any type.\n\n* __Data.Vector.Fixed.Storable__:\nUnboxed vectors of Storable  types.\n\n* __Data.Vector.Fixed.Primitive__:\nUnboxed vectors backed by single @ByteArray@\n\n* __Data.Vector.Fixed.Mutable__:\nType classes for array-based implementation and API for working with\nmutable state.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.6") (hsPkgs."foldable1-classes-compat" or (errorHandler.buildDepError "foldable1-classes-compat"));
        buildable = true;
      };
      tests = {
        "fixed-vector-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "9.2"
            then false
            else true;
        };
        "fixed-vector-inspect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-inspection-testing" or (errorHandler.buildDepError "tasty-inspection-testing"))
          ];
          buildable = true;
        };
      };
    };
  }