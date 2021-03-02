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
      specVersion = "1.12";
      identifier = { name = "vcache"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 by David Barbour";
      maintainer = "dmbarbour@gmail.com";
      author = "David Barbour";
      homepage = "http://github.com/dmbarbour/haskell-vcache";
      url = "";
      synopsis = "large, persistent, memcached values and structure sharing for Haskell ";
      description = "VCache provides a nearly-transparent persistent memory for Haskell\nwith transactional variables, persistent roots, and large structured\nvalues. The virtual space is a memory-mapped file via LMDB, with\nstructure sharing and incremental GC.\n\nVCache is very similar to packages acid-state, perdure, and TCache.\nVCache is intended as an acid-state alternative, offering flexibility\nto model fine-grained variables or extremely large values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."direct-murmur-hash" or (errorHandler.buildDepError "direct-murmur-hash"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."lmdb" or (errorHandler.buildDepError "lmdb"))
          (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          (hsPkgs."easy-file" or (errorHandler.buildDepError "easy-file"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }