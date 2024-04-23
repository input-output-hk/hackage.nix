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
      identifier = { name = "dependent-literals"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-dependent-literals#readme";
      url = "";
      synopsis = "Provides library support for pseudo-dependently-typed int literals.";
      description = "This is the library counterpart of\n<https://hackage.haskell.org/package/dependent-literals-plugin dependent-literals-plugin>.\nSee that package's description for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
          (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
          (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
          (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        buildable = true;
      };
    };
  }