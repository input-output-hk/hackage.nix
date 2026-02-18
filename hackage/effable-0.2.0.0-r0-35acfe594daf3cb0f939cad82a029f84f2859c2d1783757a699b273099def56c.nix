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
    flags = { doctest = false; isdev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "effable"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Carl W";
      maintainer = "Carl W";
      author = "Carl W";
      homepage = "https://github.com/carlwr/effable#readme";
      url = "";
      synopsis = "A data structure for emission plans";
      description = "A pure, composable representation of planned emissions into an effectful context, supporting deferred wrapping and conditional inclusion.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effable" or (errorHandler.buildDepError "effable"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
          ];
          buildable = if !flags.doctest then false else true;
        };
      };
    };
  }