{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      executable = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "zip-archive";
        version = "0.1.1.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Library for creating and modifying zip archives.";
      description = "The zip-archive library provides functions for creating, modifying,\nand extracting files from zip archives.";
      buildType = "Simple";
    };
    components = {
      "zip-archive" = {
        depends  = ([
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          (hsPkgs.old-time)
          (hsPkgs.digest)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = { "Zip" = {}; };
    };
  }