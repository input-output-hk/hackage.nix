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
    flags = {
      non-blocking-ffi = true;
      pkg-config = true;
      bundled-c-zlib = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "zlib"; version = "0.7.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2016 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>, Andrew Lelechenko <andrew.lelechenko@gmail.com>, Emily Pillmore <emilypi@cohomolo.gy>, Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Duncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the gzip and zlib formats";
      description = "This package provides a pure interface for compressing and\ndecompressing streams of data represented as lazy\n'ByteString's. It uses the\n<https://en.wikipedia.org/wiki/Zlib zlib C library>\nso it has high performance. It supports the \\\"zlib\\\",\n\\\"gzip\\\" and \\\"raw\\\" compression formats.\n\nIt provides a convenient high level API suitable for most\ntasks and for the few cases where more control is needed it\nprovides access to the full zlib feature set.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (flags.bundled-c-zlib || compiler.isGhcjs && true || system.isGhcjs || system.isWasm32 || !flags.pkg-config && system.isWindows) (hsPkgs."zlib-clib" or (errorHandler.buildDepError "zlib-clib"));
        libs = pkgs.lib.optionals (!(flags.bundled-c-zlib || compiler.isGhcjs && true || system.isGhcjs || system.isWasm32 || !flags.pkg-config && system.isWindows)) (pkgs.lib.optional (!flags.pkg-config) (pkgs."z" or (errorHandler.sysDepError "z")));
        pkgconfig = pkgs.lib.optionals (!(flags.bundled-c-zlib || compiler.isGhcjs && true || system.isGhcjs || system.isWasm32 || !flags.pkg-config && system.isWindows)) (pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib")));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ] ++ pkgs.lib.optional (system.isWindows && (compiler.isGhc && compiler.version.lt "8.4")) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }