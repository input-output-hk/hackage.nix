{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      dev = false;
      bench-show = false;
      has-icu = false;
      has-llvm = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "unicode-transforms"; version = "0.3.6"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Harendra Kumar,\n2014–2015 Antonio Nikishaev";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "http://github.com/harendra-kumar/unicode-transforms";
      url = "";
      synopsis = "Unicode normalization";
      description = "Fast Unicode 12.1.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bitarray)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          ];
        };
      exes = {
        "chart" = {
          depends = (pkgs.lib).optionals (flags.bench-show) [
            (hsPkgs.base)
            (hsPkgs.bench-show)
            (hsPkgs.split)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "extras" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
            ];
          };
        "quickcheck" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
            ] ++ (pkgs.lib).optional (flags.has-icu) (hsPkgs.text-icu);
          };
        "ucd" = {
          depends = [
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
          depends = ([
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.gauge)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
            ] ++ (pkgs.lib).optional (flags.has-icu) (hsPkgs.text-icu)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs.path);
          };
        };
      };
    }