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
      specVersion = "1.12";
      identifier = { name = "fin-int"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2017-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Lennart Augustsson <lennart@augustsson.net>";
      homepage = "https://github.com/google/hs-fin-vec#readme";
      url = "";
      synopsis = "Finite sets of static size";
      description = "This provides a newtype @Fin@ containing an @Int@ with an invariant that\nits value is less than its type-level @Nat@ bound.  It aims to have low\noverhead compared to @Int@s, and is suitable for use as the index type of\nlength-indexed vectors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."attenuation" or (errorHandler.buildDepError "attenuation"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
        ];
        buildable = true;
      };
    };
  }