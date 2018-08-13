{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
      has-icu = false;
      has-llvm = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unicode-transforms";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Harendra Kumar,\n2014–2015 Antonio Nikishaev";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "http://github.com/harendra-kumar/unicode-transforms";
      url = "";
      synopsis = "Unicode normalization";
      description = "Fast Unicode 9.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).";
      buildType = "Simple";
    };
    components = {
      "unicode-transforms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bitarray)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "extras" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
          ];
        };
        "quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
          ] ++ pkgs.lib.optional (_flags.has-icu) (hsPkgs.text-icu);
        };
        "ucd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.getopt-generics)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
          ] ++ pkgs.lib.optional (_flags.has-icu) (hsPkgs.text-icu)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.path);
        };
      };
    };
  }