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
      specVersion = "1.10";
      identifier = { name = "ghc-call-stack-extras"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 David Feuer";
      maintainer = "David.Feuer@gmail.com";
      author = "David Feuer";
      homepage = "https://github.com/treeowl/ghc-call-stack-extras";
      url = "";
      synopsis = "Extra utilities for HasCallStack";
      description = "Add notes to GHC call stacks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }