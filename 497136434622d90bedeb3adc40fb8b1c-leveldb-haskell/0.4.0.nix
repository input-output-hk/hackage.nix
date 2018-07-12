{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "leveldb-haskell";
          version = "0.4.0";
        };
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
        "leveldb-haskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
          libs = [
            pkgs.leveldb
            pkgs.snappy
            pkgs."stdc++"
          ];
        };
        exes = {
          "leveldb-example-comparator" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.data-default
              hsPkgs.leveldb-haskell
            ];
          };
          "leveldb-example-features" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.resourcet
              hsPkgs.data-default
              hsPkgs.leveldb-haskell
            ];
          };
          "leveldb-example-filterpolicy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.data-default
              hsPkgs.leveldb-haskell
            ];
          };
          "leveldb-example-iterforkio" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.leveldb-haskell
            ];
          };
        };
        tests = {
          "leveldb-properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.mtl
              hsPkgs.leveldb-haskell
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.temporary
              hsPkgs.transformers
            ];
          };
        };
      };
    }