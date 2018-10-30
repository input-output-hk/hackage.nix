{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { build-tests = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "halfs";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joel Stanley <intractable@gmail.com>";
      author = "Joel Stanley <intractable@gmail.com>,\nAdam Wick <awick@galois.com>,\nIsaac Jones <ijones@galois.com>";
      homepage = "";
      url = "";
      synopsis = "The HAskelL File System (\"halfs\" -- intended for use on the HaLVM)";
      description = "A library implementing a file system suitable for use in\nHaLVMs.  Provides useful abstractions over the underlying\nblock layer.  Implemented atop FUSE.  Note: This is a new\nimplementation of the halfs project, and bears little to\nno resemblance to halfs 0.2.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fingertree)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "halfs-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fingertree)
            (hsPkgs.halfs)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.time)
          ];
        };
        "halfs" = {
          depends  = [
            (hsPkgs.HFuse)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.halfs)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }