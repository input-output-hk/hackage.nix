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
      identifier = { name = "ten-lens"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-ten#readme";
      url = "";
      synopsis = "Lenses for the types in the ten package.";
      description = "This provides lenses and related functionality for\n<https://hackage.haskell.org/package/ten ten>.  It's in a separate package to\nreduce the dependency weight of @ten@ itself.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."ten" or (errorHandler.buildDepError "ten"))
        ];
        buildable = true;
      };
    };
  }