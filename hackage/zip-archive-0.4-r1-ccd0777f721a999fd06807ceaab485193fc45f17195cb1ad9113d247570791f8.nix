{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "zip-archive"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/zip-archive";
      url = "";
      synopsis = "Library for creating and modifying zip archives.";
      description = "The zip-archive library provides functions for creating, modifying, and\nextracting files from zip archives. The zip archive format is\ndocumented in <http://www.pkware.com/documents/casestudies/APPNOTE.TXT>.\n\nCertain simplifying assumptions are made about the zip archives: in\nparticular, there is no support for strong encryption, zip files that\nspan multiple disks, ZIP64, OS-specific file attributes, or compression\nmethods other than Deflate. However, the library should be able to read\nthe most common zip archives, and the archives it produces should be\nreadable by all standard unzip programs.\n\nArchives are built and extracted in memory, so manipulating large zip\nfiles will consume a lot of memory. If you work with large zip files or\nneed features not supported by this library, a better choice may be\n<http://hackage.haskell.org/package/zip zip>, which uses a\nmemory-efficient streaming approach. However, zip can only read and\nwrite archives inside instances of MonadIO, so zip-archive is a better\nchoice if you want to manipulate zip archives in \"pure\" contexts.\n\nAs an example of the use of the library, a standalone zip archiver and\nextracter is provided in the source distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.digest)
          (hsPkgs.directory)
          (hsPkgs.time)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      exes = {
        "zip-archive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.zip-archive)
            ];
          };
        };
      tests = {
        "test-zip-archive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.HUnit)
            (hsPkgs.zip-archive)
            (hsPkgs.temporary)
            (hsPkgs.filepath)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          build-tools = [
            (hsPkgs.buildPackages.unzip or (pkgs.buildPackages.unzip))
            ];
          };
        };
      };
    }