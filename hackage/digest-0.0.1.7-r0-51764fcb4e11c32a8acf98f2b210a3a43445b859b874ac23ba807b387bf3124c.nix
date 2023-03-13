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
    flags = { pkg-config = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "digest"; version = "0.0.1.7"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2009 Eugene Kirpichov";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various hashes for bytestrings; CRC32 and Adler32 for now.";
      description = "This package provides efficient hash implementations for\nstrict and lazy bytestrings. For now, CRC32 and Adler32 are supported;\nthey are implemented as FFI bindings to efficient code from zlib.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (!(flags.pkg-config && !system.isWindows && !system.isFreebsd)) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"));
        pkgconfig = (pkgs.lib).optional (flags.pkg-config && !system.isWindows && !system.isFreebsd) (pkgconfPkgs."zlib" or (errorHandler.pkgConfDepError "zlib"));
        buildable = true;
        };
      };
    }