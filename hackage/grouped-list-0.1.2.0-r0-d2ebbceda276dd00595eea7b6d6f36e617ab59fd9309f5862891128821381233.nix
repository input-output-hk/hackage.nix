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
      specVersion = "1.10";
      identifier = {
        name = "grouped-list";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md";
      url = "";
      synopsis = "Grouped lists. Equal consecutive elements are grouped.";
      description = "Grouped lists work like regular lists, except for two conditions:\n\n* Grouped lists are always finite. Attempting to construct an infinite\ngrouped list will result in an infinite loop.\n\n* Grouped lists internally represent consecutive equal elements as only\none, hence the name of /grouped lists/.\n\nThis mean that grouped lists are ideal for cases where the list has many\nrepetitions (like @[1,1,1,1,7,7,7,7,7,7,7,7,2,2,2,2,2]@, although they might\npresent some deficiencies in the absent of repetitions.\n\n/Warning: this library is in early development./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pointed)
          (hsPkgs.deepseq)
        ];
      };
      benchmarks = {
        "grouped-list-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.grouped-list)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }