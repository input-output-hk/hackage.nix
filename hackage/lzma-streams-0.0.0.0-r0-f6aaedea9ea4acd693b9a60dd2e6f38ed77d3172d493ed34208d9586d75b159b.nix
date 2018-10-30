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
        name = "lzma-streams";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/lzma-streams";
      url = "";
      synopsis = "IO-Streams interface for lzma/xz compression";
      description = "This package provides an IO-Streams interface for the LZMA\ncompression algorithm used in the @.xz@ file format.\n\nDecompressing @.xz@ 'InputStreams' and compressing 'OutputStreams'\nto @.xz@ with tunable (de)compression parameters is supported.\n\nSee also the XZ Utils home page: <http://tukaani.org/xz/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
        ];
        libs = [ (pkgs."lzma") ];
      };
      tests = {
        "lzma-streams-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.lzma-streams)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }