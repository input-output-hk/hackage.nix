{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; debugoutput = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "PrimitiveArray"; version = "0.9.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2011-2019";
      homepage = "https://github.com/choener/PrimitiveArray";
      url = "";
      synopsis = "Efficient multidimensional arrays";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nThis library provides efficient multidimensional arrays. Import\n@Data.PrimitiveArray@ for indices, lenses, and arrays.\n\nFor\n<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized ADP>\nusers, the library also provides the machinary to\nfill tables in the correct order required by usual CYK-style\nparsers, or regular grammars (used e.g. in alignment\nalgorithms). This means that unless your grammar requires a\nstrange order in which parsing is to be performed, it will\nmostly \"just work\".\n\nIn general operations do not perform bounds-checking or other\nsanity-checking and are aimed towards efficiency as much as\npossible. Users (like @ADPfusion@) should perform their own\nbounds-checking, outside of code that performs \"loop-like\"\noperations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bits)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.log-domain)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.smallcheck)
          (hsPkgs.tasty)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.tasty-smallcheck)
          (hsPkgs.tasty-th)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.DPutils)
          (hsPkgs.OrderedBits)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.bits)
            (hsPkgs.cereal)
            (hsPkgs.cereal-vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.log-domain)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.DPutils)
            (hsPkgs.OrderedBits)
            (hsPkgs.PrimitiveArray)
            ];
          };
        };
      };
    }