{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "leveldb-haskell";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 The leveldb-haskell Authors";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop <kim.altintop@gmail.com>\n, Austin Seipp <mad.one@gmail.com>\n, Michael Lazarev <lazarev.michael@gmail.com>\n, Will Moss <wbmoss@gmail.com>";
      homepage = "http://github.com/kim/leveldb-haskell";
      url = "";
      synopsis = "Haskell bindings to LevelDB";
      description = "From <http://leveldb.googlecode.com>:\n\nLevelDB is a fast key-value storage library written at Google that provides\nan ordered mapping from string keys to string values.\n\n\nThis library provides a Haskell language binding to LeveldDB. It is in very\nearly stage and has seen very limited testing.\n\nNote: as of v1.3, LevelDB can be built as a shared library. Thus, as of\nv0.1.0 of this library, LevelDB is no longer bundled and must be installed\non the target system (version 1.3 or greater).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.data-default)
        ];
        libs = [ (pkgs."leveldb") ];
      };
    };
  }