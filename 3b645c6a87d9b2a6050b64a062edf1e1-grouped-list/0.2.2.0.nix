{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "grouped-list";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md";
        url = "";
        synopsis = "Grouped lists. Equal consecutive elements are grouped.";
        description = "Grouped lists work like regular lists, except for two conditions:\n\n* Grouped lists are always finite. Attempting to construct an infinite\ngrouped list will result in an infinite loop.\n\n* Grouped lists internally represent consecutive equal elements as only\none, hence the name of /grouped lists/.\n\nThis mean that grouped lists are ideal for cases where the list has many\nrepetitions (like @[1,1,1,1,7,7,7,7,7,7,7,7,2,2,2,2,2]@, although they might\npresent some deficiencies in the absent of repetitions.";
        buildType = "Simple";
      };
      components = {
        grouped-list = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.pointed
            hsPkgs.deepseq
            hsPkgs.binary
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.transformers;
        };
        tests = {
          grouped-list-examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.grouped-list
            ];
          };
          grouped-list-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.grouped-list
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          grouped-list-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.grouped-list
              hsPkgs.criterion
            ];
          };
        };
      };
    }