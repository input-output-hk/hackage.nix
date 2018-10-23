{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sorted-list";
        version = "0.1.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "https://github.com/Daniel-Diaz/sorted-list/blob/master/README.md";
      url = "";
      synopsis = "Type-enforced sorted lists and related functions.";
      description = "Type-enforced sorted lists and related functions.\n\nThese are useful for:\n\n* Constraining the argument of a function to be a sorted list\nby stating in your type that the input list is a sorted list.\n\n* Avoiding sorting a list twice.\n\n* Creating a list that is sorted from the moment of its construction,\nso it doesn't have to be sorted later.\n\n* Performing list operations keeping the input list sorted.\n\n* Improving those list operations that can be\nbenefited from the ordering of its elements.\n\n* Creating infinite lists that are sorted!\n\n* And more!\n\nIf you are missing a feature, do not hesitate\nto ask by opening an issue at the bug-tracker.";
      buildType = "Simple";
    };
    components = {
      "sorted-list" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
      benchmarks = {
        "sorted-list-map-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sorted-list)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }