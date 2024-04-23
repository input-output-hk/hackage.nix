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
      specVersion = "1.10";
      identifier = { name = "bitwise"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012,2016,2018 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/bitwise";
      url = "";
      synopsis = "fast multi-dimensional unboxed bit packed Bool arrays";
      description = "Unboxed multidimensional bit packed Bool arrays with fast aggregate\noperations based on lifting Bool operations to bitwise operations.\n\nThere are many other bit packed structures out there, but none met\nall of these requirements:\n\n(1) unboxed bit packed Bool array,\n\n(2) multi-dimensional indexing,\n\n(3) fast (de)serialization, or interoperable with foreign code,\n\n(4) fast aggregate operations (fold, map, zip).\n\nQuick tour of the bitwise library:\n\n[Data.Bits.Bitwise] Lift boolean operations on 'Bool' to bitwise\noperations on 'Data.Bits.Bits'.\n\n[Data.Array.BitArray] Immutable bit arrays.\n\n[Data.Array.BitArray.ST] Mutable bit arrays in 'Control.Monad.ST.ST'.\n\n[Data.Array.BitArray.IO] Mutable bit arrays in 'IO'.\n\n[Data.Array.BitArray.ByteString] (De)serialization.\n\n[Codec.Image.PBM] Portable bitmap monochrome 2D image format.\n\nVery rough performance benchmarks:\n\n* immutable random access single bit reads:\n@BitArray ix@ is about 40% slower than @UArray ix Bool@,\n\n* 'Control.Monad.ST.ST' mutable random access single bit reads:\n@STBitArray s ix@ is about the same as @STUArray s ix Bool@,\n\n* immutable map @Bool -> Bool@:\n@BitArray ix@ is about 85x faster than @UArray ix Bool@,\n\n* immutable zipWith @Bool -> Bool -> Bool@:\n@BitArray ix@ is about 1300x faster than @UArray ix Bool@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ pkgs.lib.optional (compiler.isHugs && true) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.4") (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4" && (compiler.isGhc && compiler.version.lt "7.8")) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.8") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
      };
      tests = {
        "bitwise-testsuite" = {
          depends = [
            (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bitwise-benchmark" = {
          depends = [
            (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }