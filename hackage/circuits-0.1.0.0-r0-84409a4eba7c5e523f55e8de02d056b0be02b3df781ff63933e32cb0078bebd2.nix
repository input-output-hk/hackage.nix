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
      specVersion = "3.0";
      identifier = { name = "circuits"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2025";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/circuits#readme";
      url = "";
      synopsis = "traced categories and circuits";
      description = "circuits is a Haskell library that makes feedback first-class, by providing Circuit, the initial traced category over a base category, hyperfunctions via Hyper, and combinators and interpreters. It is experimental, but could be a promising approach to programming circuits that is intensional, ergonomic and performant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"));
        buildable = true;
      };
    };
  }