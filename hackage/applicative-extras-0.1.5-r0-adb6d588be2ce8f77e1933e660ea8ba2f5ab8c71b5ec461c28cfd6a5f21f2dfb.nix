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
      specVersion = "1.0";
      identifier = { name = "applicative-extras"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Eidhof <ce+hackage@tupil.com>";
      author = "Chris Eidhof <ce+hackage@tupil.com>, Russel O'Connor";
      homepage = "http://github.com/chriseidhof/applicative-extras/";
      url = "";
      synopsis = "Instances for Applicative";
      description = "Some instances for applicative functors and type-level\ncomposition. Forkable on github.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }