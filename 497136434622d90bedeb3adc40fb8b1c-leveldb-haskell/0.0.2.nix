{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "leveldb-haskell";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 The leveldb-haskell Authors";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop";
      homepage = "http://github.com/kim/leveldb-haskell";
      url = "";
      synopsis = "Haskell bindings to LevelDB";
      description = "From <http://leveldb.googlecode.com>:\n\nLevelDB is a fast key-value storage library written at Google that provides\nan ordered mapping from string keys to string values.\n\n\nThis library provides a Haskell language binding to LeveldDB. It is in very\nearly stage and has seen very limited testing.\n\nNote: the LevelDB source code is bundled with this package and built as\npart of the installation. To enable compression, the snappy library needs to\nbe installed on the target system.";
      buildType = "Configure";
    };
    components = {
      "leveldb-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
        ];
        libs = [ (pkgs."stdc++") ];
      };
    };
  }