{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "leveldb-haskell"; version = "0.4.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [
          (pkgs."leveldb" or ((hsPkgs.pkgs-errors).sysDepError "leveldb"))
          (pkgs."snappy" or ((hsPkgs.pkgs-errors).sysDepError "snappy"))
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      exes = {
        "leveldb-example-comparator" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "leveldb-example-features" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "leveldb-example-filterpolicy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        "leveldb-example-iterforkio" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "leveldb-properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."leveldb-haskell" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }