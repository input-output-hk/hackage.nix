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
      specVersion = "1.10";
      identifier = {
        name = "rio";
        version = "0.1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/rio#readme";
      url = "";
      synopsis = "A standard library for Haskell";
      description = "See README and Haddocks at <https://www.stackage.org/package/rio>";
      buildType = "Simple";
    };
    components = {
      "rio" = {
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
          (hsPkgs.process)
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
            (hsPkgs.process)
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