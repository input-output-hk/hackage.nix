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
      specVersion = "1.10";
      identifier = {
        name = "rio";
        version = "0.0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/rio#readme";
      url = "";
      synopsis = "A standard library for Haskell";
      description = "Work in progress library, see README at <https://github.com/commercialhaskell/rio#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.typed-process)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.rio)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.typed-process)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }