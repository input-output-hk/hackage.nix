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
      identifier = { name = "pretty"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Terei <dave.terei@gmail.com>";
      author = "";
      homepage = "http://github.com/haskell/pretty";
      url = "";
      synopsis = "Pretty-printing library";
      description = "This package contains a pretty-printing library, a set of API's\nthat provides a way to easily print out text in a consistent\nformat of your choosing. This is useful for compilers and related\ntools.\n\nThis library was originally designed by John Hughes's and has since\nbeen heavily modified by Simon Peyton Jones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }