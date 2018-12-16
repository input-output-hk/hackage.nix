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
      specVersion = "1.8";
      identifier = {
        name = "normalization-insensitive";
        version = "2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Bas van Dijk,\n2016 Patrick Pelletier";
      maintainer = "Patrick Pelletier <code@funwithsoftware.org>";
      author = "Bas van Dijk,\nPatrick Pelletier";
      homepage = "https://github.com/ppelleti/normalization-insensitive";
      url = "";
      synopsis = "Normalization insensitive string comparison";
      description = "The module @Data.Unicode.NormalizationInsensitive@ provides\nthe 'NI' type constructor which can be parameterized by a\nstring-like type like: 'String', 'ByteString', 'Text',\netc.. Comparisons of values of the resulting type will be\ninsensitive to normalization.\nThis is very similar in spirit to the @case-insensitive@\npackage, and is in fact based on the same code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.unicode-transforms)
        ];
      };
      tests = {
        "test-normalization-insensitive" = {
          depends = [
            (hsPkgs.normalization-insensitive)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.hashable)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-normalization-insensitive" = {
          depends = [
            (hsPkgs.normalization-insensitive)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }