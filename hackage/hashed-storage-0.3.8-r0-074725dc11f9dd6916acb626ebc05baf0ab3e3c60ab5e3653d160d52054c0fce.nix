{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; diff = false; hpc = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hashed-storage"; version = "0.3.8"; };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Petr Rockai <me@mornfall.net>";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Hashed file storage support code.";
      description = "Support code for reading and manipulating hashed file storage\n(where each file and directory is associated with a\ncryptographic hash, for corruption-resistant storage and fast\ncomparisons).\n\nThe supported storage formats include darcs hashed pristine, a\nplain filesystem tree and an indexed plain tree (where the index\nmaintains hashes of the plain files and directories).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.mmap)
          ] ++ (pkgs.lib).optional (flags.diff) (hsPkgs.lcs);
        };
      exes = {
        "hashed-storage-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.zip-archive)
            ];
          };
        };
      };
    }