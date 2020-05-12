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
      specVersion = "1.6";
      identifier = { name = "digamma"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgamari@gmail.com";
      author = "Ben Gamari";
      homepage = "https://github.com/bgamari/digamma";
      url = "";
      synopsis = "A (deprecated) implementation of the digamma function";
      description = "/deprecated/ This package has been superceded by\n'Numeric.SpecFunctions.digamma' from the @math-functions@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          ];
        buildable = true;
        };
      };
    }