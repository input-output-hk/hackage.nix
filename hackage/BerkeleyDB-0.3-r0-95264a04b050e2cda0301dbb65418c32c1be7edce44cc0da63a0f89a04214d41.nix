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
      specVersion = "1.0";
      identifier = { name = "BerkeleyDB"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "John McCall, 2007";
      maintainer = "rjmccall@gmail.com";
      author = "John McCall";
      homepage = "http://www.cs.pdx.edu/~rjmccall/hackage/BerkeleyDB/";
      url = "";
      synopsis = "Bindings for Berkeley DB v1.x";
      description = "Provides Haskell bindings for Berkeley DB v1.x, a simple file-backed\ndatabase library which is included by default with many UNIX\ndistributions.  This package presently makes no effort to support\nmodern versions of Berkeley DB.\n\nDatabases may be organized in one of four methods: in a hashtable,\nin a b-tree, in a stream of fixed-length records, and in a stream\nof variable-length records.  Custom comparison and hash functions\nare supported.  Most of the standard database API is supported.\n\nThis implementation *seems* stable, inasmuch as I don't know of any\nglaring flaws, but I haven't done anything that could even jokingly\nbe referred to as coverage testing.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }