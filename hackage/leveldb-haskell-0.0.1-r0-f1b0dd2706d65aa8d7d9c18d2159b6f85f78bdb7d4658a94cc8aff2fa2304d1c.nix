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
      specVersion = "1.8";
      identifier = {
        name = "leveldb-haskell";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop";
      homepage = "http://github.com/kim/leveldb-haskell";
      url = "";
      synopsis = "Haskell bindings to LevelDB";
      description = "From <http://leveldb.googlecode.com>:\n\nLevelDB is a fast key-value storage library written at Google that provides\nan ordered mapping from string keys to string values.\n\n\nThis library provides a Haskell language binding to LeveldDB. It is in very\nearly stage and has seen very limited testing.\n\nNote: the LevelDB source code is bundled with this package and built as\npart of the installation, assuming that a working C++ compiler is installed\non the target system and the @make@ command can invoke it.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."leveldb")
          (pkgs."snappy")
          (pkgs."stdc++")
        ];
      };
      exes = {
        "hsleveldb-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }