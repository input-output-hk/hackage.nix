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
        name = "hashed-storage";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Petr Rockai <me@mornfall.net>";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Hashed file storage support code.";
      description = "Support code for reading and manipulating hashed file storage (where each\nfile and directory is associated with a cryptographic hash, for\ncorruption-resistant storage and fast comparisons).\n\nThe supported storage formats include darcs hashed pristine, a plain\nfilesystem tree and an indexed plain tree (where the index maintains hashes\nof the plain files and directories).";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-mmap)
          (hsPkgs.zlib)
          (hsPkgs.lcs)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.mmap)
        ];
      };
      exes = {
        "hashed-storage-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.process)
          ];
        };
      };
    };
  }