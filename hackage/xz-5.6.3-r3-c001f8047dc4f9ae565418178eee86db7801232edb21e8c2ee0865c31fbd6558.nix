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
    flags = { system-xz = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "xz"; version = "5.6.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Herbert Valerio Riedel, (c) 2021 Julian Ospald";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "https://github.com/hasufell/lzma-static";
      url = "";
      synopsis = "LZMA/XZ compression and decompression";
      description = "This package provides a pure interface for compressing and\ndecompressing\n<https://en.wikipedia.org/wiki/LZMA LZMA (Lempel–Ziv–Markov chain algorithm)>\nstreams of data represented as lazy @ByteString@s. A\nmonadic incremental interface is provided as well. This package\nrelies on the <http://tukaani.org/xz/ liblzma C library>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (!flags.system-xz) (hsPkgs."xz-clib" or (errorHandler.buildDepError "xz-clib"));
        pkgconfig = pkgs.lib.optional (flags.system-xz) (pkgconfPkgs."liblzma" or (errorHandler.pkgConfDepError "liblzma"));
        buildable = true;
      };
      tests = {
        "lzma-tests" = {
          depends = [
            (hsPkgs."xz" or (errorHandler.buildDepError "xz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }