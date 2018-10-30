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
        name = "case-insensitive";
        version = "1.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/case-insensitive";
      url = "";
      synopsis = "Case insensitive string comparison";
      description = "The module @Data.CaseInsensitive@ provides the 'CI' type\nconstructor which can be parameterised by a string-like\ntype like: 'String', 'ByteString', 'Text',\netc.. Comparisons of values of the resulting type will be\ninsensitive to cases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "test-case-insensitive" = {
          depends  = [
            (hsPkgs.case-insensitive)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-case-insensitive" = {
          depends  = [
            (hsPkgs.case-insensitive)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }