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
    flags = { newaccelerate = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "abstract-par-accelerate"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adam Foltzer 2011-2012";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Adam Foltzer 2011-2012";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Provides the class ParAccelerate, nothing more.";
      description = "Following the convention the @abstract-par@ package,\nthis package simply defines an interface, in the form of a\ntype class, and does not contain any implementation.\nImporting this module gives the user an API to\naccess @Accelerate@ computations from within\n@Par@ computations, with the added benefit that\nthe @Par@ can do integrated CPU/GPU scheduling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ (if flags.newaccelerate
          then [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
          ]
          else [
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          ]);
        buildable = true;
      };
    };
  }