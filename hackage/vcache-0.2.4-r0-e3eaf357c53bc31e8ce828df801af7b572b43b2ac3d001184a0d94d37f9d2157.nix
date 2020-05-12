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
      specVersion = "1.16.0.3";
      identifier = { name = "vcache"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 by David Barbour";
      maintainer = "dmbarbour@gmail.com";
      author = "David Barbour";
      homepage = "http://github.com/dmbarbour/haskell-vcache";
      url = "";
      synopsis = "semi-transparent persistence for Haskell using LMDB, STM";
      description = "VCache provides a nearly-transparent persistent memory for Haskell\nsupporting ACID transactional variables and large structured values.\nThe virtual address space is modeled above a memory mapped file via\nLMDB, with structure sharing and incremental reference counting GC.\n\nVCache was developed as an alternative to acid-state in a context where\nthe persistent data is much bigger than the active working set and RAM.\nOther similar packages include TCache and perdure. See the home page\nfor a simple comparison.";
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