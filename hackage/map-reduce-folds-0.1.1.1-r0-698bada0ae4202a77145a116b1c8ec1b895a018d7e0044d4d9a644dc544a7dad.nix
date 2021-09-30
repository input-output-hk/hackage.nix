{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { dump-core = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "map-reduce-folds"; version = "0.1.1.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."discrimination" or (errorHandler.buildDepError "discrimination"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
        buildable = true;
        };
      tests = {
        "map-reduce-folds-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."map-reduce-folds" or (errorHandler.buildDepError "map-reduce-folds"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            ];
          buildable = true;
          };
        "listStats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."map-reduce-folds" or (errorHandler.buildDepError "map-reduce-folds"))
            ];
          buildable = true;
          };
        "readmeExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."map-reduce-folds" or (errorHandler.buildDepError "map-reduce-folds"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-map-reduce" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."map-reduce-folds" or (errorHandler.buildDepError "map-reduce-folds"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
          buildable = true;
          };
        };
      };
    }