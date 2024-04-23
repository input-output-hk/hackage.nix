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
      identifier = { name = "control-dsl"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Yang Bo";
      maintainer = "pop.atry@gmail.com";
      author = "Yang Bo";
      homepage = "https://github.com/Atry/Control.Dsl#readme";
      url = "";
      synopsis = "An alternative to monads in do-notation";
      description = "This \\\"control-dsl\\\" package is a toolkit to create extensible Domain Specific Languages in @do@-notation.\n\nSee \"Control.Dsl\" for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."control-dsl" or (errorHandler.buildDepError "control-dsl"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
    };
  }