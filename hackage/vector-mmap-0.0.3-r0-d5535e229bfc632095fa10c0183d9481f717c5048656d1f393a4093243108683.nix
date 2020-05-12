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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vector-mmap"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel Peebles 2010";
      maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
      author = "Daniel Peebles <pumpkingod@gmail.com>";
      homepage = "http://github.com/pumpkin/vector-mmap";
      url = "";
      synopsis = "Memory map immutable and mutable vectors";
      description = "Memory map immutable and mutable vectors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector-mmap" or (errorHandler.buildDepError "vector-mmap"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }