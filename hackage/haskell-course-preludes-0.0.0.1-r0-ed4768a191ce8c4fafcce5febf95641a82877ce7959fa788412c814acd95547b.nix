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
      identifier = { name = "haskell-course-preludes"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "";
      url = "";
      synopsis = "Small modules for a Haskell course in which Haskell is taught by implementing Prelude functionality.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }