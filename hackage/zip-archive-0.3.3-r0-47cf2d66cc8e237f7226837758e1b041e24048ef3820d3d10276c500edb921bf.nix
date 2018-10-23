{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "zip-archive";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/zip-archive";
      url = "";
      synopsis = "Library for creating and modifying zip archives.";
      description = "The zip-archive library provides functions for creating, modifying,\nand extracting files from zip archives.";
      buildType = "Custom";
    };
    components = {
      "zip-archive" = {
        depends  = [
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
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "zip-archive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.zip-archive)
          ];
        };
      };
      tests = {
        "test-zip-archive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.HUnit)
            (hsPkgs.zip-archive)
            (hsPkgs.temporary)
            (hsPkgs.filepath)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }