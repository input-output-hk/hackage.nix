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
      identifier = { name = "unbound"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephanie Weirich <sweirich@cis.upenn.edu>, Brent Yorgey <byorgey@cis.upenn.edu> ";
      author = "Stephanie Weirich, Brent Yorgey";
      homepage = "https://github.com/sweirich/replib";
      url = "";
      synopsis = "Generic support for programming with names and binders";
      description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and Unbound\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n\"Unbound.LocallyNameless\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."RepLib" or (errorHandler.buildDepError "RepLib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }