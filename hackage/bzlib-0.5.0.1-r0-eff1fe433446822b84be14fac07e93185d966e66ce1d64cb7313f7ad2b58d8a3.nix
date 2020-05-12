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
      specVersion = "1.6";
      identifier = { name = "bzlib"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Duncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the bzip2 format";
      description = "This package provides a pure interface for compressing and\ndecompressing streams of data represented as lazy\n'ByteString's. It uses the bz2 C library so it has high\nperformance.\n\nIt provides a convenient high level API suitable for most\ntasks and for the few cases where more control is needed it\nprovides access to the full bzip2 feature set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (!system.isWindows) (pkgs."bz2" or (errorHandler.sysDepError "bz2"));
        buildable = true;
        };
      };
    }