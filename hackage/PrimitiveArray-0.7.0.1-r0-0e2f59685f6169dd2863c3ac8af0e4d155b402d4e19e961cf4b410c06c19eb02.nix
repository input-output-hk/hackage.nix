{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "PrimitiveArray";
        version = "0.7.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2011-2016";
      homepage = "https://github.com/choener/PrimitiveArray";
      url = "";
      synopsis = "Efficient multidimensional arrays";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nThis library provides efficient multidimensional arrays. Import\n@Data.PrimitiveArray@ for indices, lenses, and arrays.\n\nFor\n<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized ADP>\nusers, the library also provides the machinary to\nfill tables in the correct order required by usual CYK-style\nparsers, or regular grammars (used e.g. in alignment\nalgorithms). This means that unless your grammar require a\nstrange order in which parsing is to be performed, it will\nmostly \"just work\".\n\nIn general all operations are (highly) unsafe, no\nbounds-checking or other sanity-checking is performed.\nOperations are aimed toward efficiency as much as possible.";
      buildType = "Simple";
    };
    components = {
      "PrimitiveArray" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bits)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.OrderedBits)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }