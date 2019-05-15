{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-core = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "map-reduce-folds"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "";
      url = "";
      synopsis = "foldl wrappers for map-reduce";
      description = "map-reduce-folds simplifies the building of folds to do map-reduce style computations on collections.  It breaks the map/reduce into an unpacking step where items may be filtered, transformed or \"melted\" (made into several new items), an assign step where the unpacked items are assigned keys, a grouping step where the assigned items are grouped by key and then a reduce step which is applied to each grouped subset.  Tools are provided to simplify building the individual steps and then \"engines\" are provided for combining them into efficient folds returning an assortment of containers.  The various pieces are replicated for effectful (monadic) steps producing effectful (monadic) folds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.foldl)
          (hsPkgs.profunctors)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.discrimination)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.vector)
          (hsPkgs.parallel)
          (hsPkgs.split)
          (hsPkgs.streaming)
          (hsPkgs.streamly)
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs.dump-core);
        };
      exes = {
        "listStats" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.profunctors)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.map-reduce-folds)
            ];
          };
        "readmeExample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.profunctors)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.map-reduce-folds)
            ];
          };
        };
      tests = {
        "map-reduce-folds-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.map-reduce-folds)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            ];
          };
        };
      benchmarks = {
        "bench-map-reduce" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.profunctors)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.map-reduce-folds)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.random)
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs.dump-core);
          };
        };
      };
    }