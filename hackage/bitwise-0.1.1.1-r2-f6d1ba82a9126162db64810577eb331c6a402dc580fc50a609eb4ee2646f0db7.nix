let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "bitwise"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012,2016 Claude Heiland-Allen";
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
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "bitwise-testsuite" = {
          depends = [
            (hsPkgs."bitwise" or (buildDepError "bitwise"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bitwise-benchmark" = {
          depends = [
            (hsPkgs."bitwise" or (buildDepError "bitwise"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }