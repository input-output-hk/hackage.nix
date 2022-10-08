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
      specVersion = "2.0";
      identifier = { name = "data-array-byte"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2009-2012";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "https://github.com/Bodigrim/data-array-byte";
      url = "";
      synopsis = "Compatibility layer for Data.Array.Byte";
      description = "Compatibility layer for [Data.Array.Byte](https://hackage.haskell.org/package/base/docs/Data-Array-Byte.html), providing boxed wrappers for @ByteArray#@ and @MutableByteArray#@ and relevant instances for GHC < 9.4. Include it into your Cabal file:\n\n> build-depends: base\n> if impl(ghc < 9.4)\n>   build-depends: data-array-byte\n\nand then @import Data.Array.Byte@ unconditionally.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }