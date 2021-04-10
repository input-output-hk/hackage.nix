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
      specVersion = "2.2";
      identifier = { name = "lzma-static"; version = "5.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Herbert Valerio Riedel, (c) 2021 Julian Ospald";
      maintainer = "hasufell@posteo.de";
      author = "Julian Ospald";
      homepage = "https://github.com/hasufell/lzma-static";
      url = "";
      synopsis = "LZMA/XZ compression and decompression (static)";
      description = "This package provides a pure interface for compressing and\ndecompressing\n<https://en.wikipedia.org/wiki/LZMA LZMA (Lempel–Ziv–Markov chain algorithm)>\nstreams of data represented as lazy @ByteString@s. A\nmonadic incremental interface is provided as well. This package\nrelies on the <http://tukaani.org/xz/ liblzma C library>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (!system.isLinux) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"))));
        buildable = if system.isWindows
          then true
          else if system.isOsx
            then true
            else if system.isLinux then true else false;
        };
      tests = {
        "lzma-tests" = {
          depends = [
            (hsPkgs."lzma-static" or (errorHandler.buildDepError "lzma-static"))
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