{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "interprocess";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/interprocess";
      url = "";
      synopsis = "Shared memory and control structures for IPC";
      description = "Provides portable shared memory allocator and some synchronization primitives.\nCan be used for interprocess communication.\nRefer to README.md for further information.";
      buildType = "Simple";
    };
    components = {
      "interprocess" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "concurrent-malloc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typed-process)
            (hsPkgs.interprocess)
          ];
        };
        "wait-qsem" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typed-process)
            (hsPkgs.interprocess)
          ];
        };
        "wait-mvar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typed-process)
            (hsPkgs.interprocess)
          ];
        };
      };
      tests = {
        "StoredMVar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typed-process)
            (hsPkgs.interprocess)
          ];
        };
      };
    };
  }