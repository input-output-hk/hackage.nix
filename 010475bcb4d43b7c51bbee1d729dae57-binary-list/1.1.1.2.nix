{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "binary-list";
        version = "1.1.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Lists of length a power of two.";
      description = "Implementation of lists whose number of elements is a\npower of two. Binary lists have this property by definition,\nso it is impossible to build a value with other kind of length.\nThe implementation take advantage of this property to get\nadditional performance.\n\nSome algorithms are designed to work only when the input list\nhas length a power of two. Use binary lists to ensure this\nproperty in the input. In addition, this library exports\nsome useful functions for this kind of algorithms. An example\nimplementing the Fast Fourier Transform is provided in the\n\"Data.BinaryList\" module.\n\nThe package contains an additional module with utilities for\nthe (de)serialization of binary lists.";
      buildType = "Simple";
    };
    components = {
      "binary-list" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.transformers)
          (hsPkgs.phantom-state)
          (hsPkgs.deepseq)
        ];
      };
      benchmarks = {
        "binary-list-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary-list)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }