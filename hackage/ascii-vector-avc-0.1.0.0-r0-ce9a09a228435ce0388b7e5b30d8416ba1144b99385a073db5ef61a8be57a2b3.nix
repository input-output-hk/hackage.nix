{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ascii-vector-avc"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "mfox@cavium.com";
      author = "Michael Fox";
      homepage = "";
      url = "";
      synopsis = "Process Ascii Vectors for Advantest 93k";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.zlib)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
          (hsPkgs.attoparsec)
          (hsPkgs.HUnit)
          (hsPkgs.split)
          (hsPkgs.binary)
          ];
        };
      exes = {
        "SelectSigs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.zlib)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq-generics)
            (hsPkgs.attoparsec)
            (hsPkgs.HUnit)
            (hsPkgs.split)
            (hsPkgs.binary)
            (hsPkgs.ascii-vector-avc)
            ];
          };
        };
      };
    }