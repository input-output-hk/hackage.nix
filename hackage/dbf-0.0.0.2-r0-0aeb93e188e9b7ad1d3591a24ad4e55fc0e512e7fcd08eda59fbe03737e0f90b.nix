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
      specVersion = "1.2";
      identifier = {
        name = "dbf";
        version = "0.0.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/dbf";
      url = "";
      synopsis = "Read and write XBase \".dbf\" files";
      description = "A simple interface for reading and writing XBase dbf\nfiles.  Provides whole-file parser and serializer as\nwell as a handle-based interface for reading and writing\nrecords from a file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.rwlock)
          (hsPkgs.monad-loops)
        ];
      };
    };
  }