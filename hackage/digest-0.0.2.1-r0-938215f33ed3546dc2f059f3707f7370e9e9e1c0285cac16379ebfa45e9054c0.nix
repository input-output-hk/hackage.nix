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
      pkg-config = true;
      have_builtin_prefetch = false;
      have_mm_prefetch = false;
      have_sse42 = false;
      have_arm64_crc32c = false;
      have_strong_getauxval = false;
      have_weak_getauxval = false;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "digest"; version = "0.0.2.1"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2009 Eugene Kirpichov";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "CRC32 and Adler32 hashes for bytestrings";
      description = "This package provides efficient hash implementations for\nstrict and lazy bytestrings. For now, CRC32 and Adler32 are supported;\nthey are implemented as FFI bindings to efficient code from zlib.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (!(flags.pkg-config && !system.isWindows && !system.isFreebsd)) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"));
        pkgconfig = pkgs.lib.optional (flags.pkg-config && !system.isWindows && !system.isFreebsd) (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"));
        buildable = true;
      };
    };
  }