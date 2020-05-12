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
      specVersion = "1.2";
      identifier = { name = "schonfinkeling"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Denis Defreyne <denis.defreyne@stoneship.org>";
      author = "Denis Defreyne <denis.defreyne@stoneship.org>";
      homepage = "";
      url = "";
      synopsis = "Transformation of n-ary functions to unary functions";
      description = "Transformation of n-ary functions to unary functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }