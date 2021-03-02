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
      specVersion = "2.2";
      identifier = { name = "vector-endian"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Ian Denhardt";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://git.zenhack.net/zenhack/haskell-vector-endian";
      url = "";
      synopsis = "Storable vectors with cpu-independent representation.";
      description = "This package exposes data types that implement the type classes from the\nvector package, but the vectors have an in-memory representation that\nis independent of the host's CPU.\n\nThis makes the data stored within them suitable for storage or transmission\nover a network, and they can be converted to bytestrings without copying.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector-endian".components.sublibs.endian-common or (errorHandler.buildDepError "vector-endian:endian-common"))
          (hsPkgs."vector-endian".components.sublibs.vector-endian-big or (errorHandler.buildDepError "vector-endian:vector-endian-big"))
          (hsPkgs."vector-endian".components.sublibs.vector-endian-little or (errorHandler.buildDepError "vector-endian:vector-endian-little"))
          ];
        buildable = true;
        };
      sublibs = {
        "endian-common" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        "little-endian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-endian".components.sublibs.endian-common or (errorHandler.buildDepError "vector-endian:endian-common"))
            ];
          buildable = true;
          };
        "big-endian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-endian".components.sublibs.endian-common or (errorHandler.buildDepError "vector-endian:endian-common"))
            ];
          buildable = true;
          };
        "vector-endian-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-endian".components.sublibs.endian-common or (errorHandler.buildDepError "vector-endian:endian-common"))
            ];
          buildable = true;
          };
        "vector-endian-little" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-endian".components.sublibs.vector-endian-indef or (errorHandler.buildDepError "vector-endian:vector-endian-indef"))
            (hsPkgs."vector-endian".components.sublibs.little-endian or (errorHandler.buildDepError "vector-endian:little-endian"))
            ];
          buildable = true;
          };
        "vector-endian-big" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zenhack-prelude" or (errorHandler.buildDepError "zenhack-prelude"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector-endian".components.sublibs.vector-endian-indef or (errorHandler.buildDepError "vector-endian:vector-endian-indef"))
            (hsPkgs."vector-endian".components.sublibs.big-endian or (errorHandler.buildDepError "vector-endian:big-endian"))
            ];
          buildable = true;
          };
        };
      };
    }