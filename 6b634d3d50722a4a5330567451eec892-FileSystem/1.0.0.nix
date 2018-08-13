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
      specVersion = "1.6";
      identifier = {
        name = "FileSystem";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/FileSystem";
      url = "";
      synopsis = "File system data structure and monad transformer.";
      description = "FileSystem allows you to create a virtual file system. This package defines:\n\n* A data structure of a file system, with directories and files.\n\n* A monad transformer which adds a file system environment, where\nyou can do standard system operations, like write and read files\nor create directories.\n\n* An IO interface for create these virtual file systems from\nexisting real directories.";
      buildType = "Simple";
    };
    components = {
      "FileSystem" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.binary)
        ];
      };
    };
  }