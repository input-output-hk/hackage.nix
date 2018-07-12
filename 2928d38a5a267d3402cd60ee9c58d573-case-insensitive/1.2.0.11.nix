{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "case-insensitive";
          version = "1.2.0.11";
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
        "case-insensitive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.deepseq
            hsPkgs.hashable
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "test-case-insensitive" = {
            depends  = [
              hsPkgs.case-insensitive
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
        benchmarks = {
          "bench-case-insensitive" = {
            depends  = [
              hsPkgs.case-insensitive
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
      };
    }