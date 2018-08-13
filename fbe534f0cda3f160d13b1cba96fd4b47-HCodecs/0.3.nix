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
      specVersion = "1.2";
      identifier = {
        name = "HCodecs";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2011 George Giorgidze";
      maintainer = "George Giorgidze (giorgidze@gmail.com) and Donya Quick (donya.quick@yale.edu)";
      author = "George Giorgidze";
      homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze and http://haskell.cs.yale.edu/";
      url = "";
      synopsis = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.";
      description = "The library provides functions to read, write and manipulate MIDI, WAVE and SoundFont2 multimedia files. It is written entirely in Haskell (without any FFI). It uses efficient  parsing and building combinators for binary data stored in ByteStrings (based on the one in 'binary' package).\n\nCorrectness of significant parts of the library has been validated with QuickCheck and Haskell Program Coverage (HPC) tool-kits.";
      buildType = "Simple";
    };
    components = {
      "HCodecs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }