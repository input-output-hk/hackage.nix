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
        name = "pipes-lzma";
        version = "0.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/pipes-lzma";
      url = "";
      synopsis = "LZMA compressors and decompressors for the Pipes package";
      description = "This package provides a @pipes@ interface to the LZMA compression algorithm\nused by the @.xz@ file format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.lzma)
        ];
      };
      exes = {
        "pipes-lzma-unxz" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-lzma)
          ];
        };
      };
      tests = {
        "pipes-lzma-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-lzma)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }