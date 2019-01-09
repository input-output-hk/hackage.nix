{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "redis-hs"; version = "0.0.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "Will Langstroth <will@langstroth.com>";
      author = "Will Langstroth <will@langstroth.com>";
      homepage = "http://github.com/wlangstroth/redis-hs";
      url = "";
      synopsis = "A simple Redis library for Haskell";
      description = "This package provides access to Redis stores using the Data.ByteString.UTF8\nByteString, for consistent handling of UTF8 encoding. It is a developer pre-\nrelease, so it lacks many of the features of the existing `redis` package\n(including a monad wrapper, state management, and custom concurrency management)\nbut for light use, this library makes using Redis very straightforward.\n\nThe feature set is incomplete, with full command coverage planned for version\n0.1.0, and full documentation and test coverage for 1.0.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }