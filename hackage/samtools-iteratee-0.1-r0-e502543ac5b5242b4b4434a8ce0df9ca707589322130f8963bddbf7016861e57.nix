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
    flags = { utilities = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "samtools-iteratee"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "";
      url = "";
      synopsis = "Iteratee interface to SamTools library";
      description = "Iteratee interface to SamTools library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."samtools" or (errorHandler.buildDepError "samtools"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          ];
        buildable = true;
        };
      exes = {
        "bam-filter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."samtools" or (errorHandler.buildDepError "samtools"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            ];
          buildable = if !flags.utilities then false else true;
          };
        "bam-count" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."samtools" or (errorHandler.buildDepError "samtools"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !flags.utilities then false else true;
          };
        };
      };
    }