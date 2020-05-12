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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "leveldb-haskell"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2014 The leveldb-haskell Authors";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop et.al. (see AUTHORS file)";
      homepage = "http://github.com/kim/leveldb-haskell";
      url = "";
      synopsis = "Haskell bindings to LevelDB";
      description = "From <http://leveldb.googlecode.com>:\n\nLevelDB is a fast key-value storage library written at Google that provides\nan ordered mapping from string keys to string values.\n\n\nThis library provides a Haskell language binding to LeveldDB. It is in very\nearly stage and has seen very limited testing.\n\nNote: as of v1.3, LevelDB can be built as a shared library. Thus, as of\nv0.1.0 of this library, LevelDB is no longer bundled and must be installed\non the target system (version 1.7 or greater is required).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = [ (pkgs."leveldb" or (errorHandler.sysDepError "leveldb")) ];
        buildable = true;
        };
      exes = {
        "leveldb-example-comparator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "leveldb-example-features" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "leveldb-example-filterpolicy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "leveldb-example-iterforkio" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or (errorHandler.buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }