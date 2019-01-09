{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mmaptest = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "mmap"; version = "0.5.5"; };
      license = "BSD-3-Clause";
      copyright = "2008, Gracjan Polak";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Memory mapped files for POSIX and Windows";
      description = "This library provides a wrapper to mmap(2) or MapViewOfFile,\nallowing files or devices to be lazily loaded into memory as\nstrict or lazy ByteStrings, ForeignPtrs or plain Ptrs, using\nthe virtual memory subsystem to do on-demand loading.\nModifications are also supported.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      exes = {
        "mmaptest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32);
          };
        };
      };
    }