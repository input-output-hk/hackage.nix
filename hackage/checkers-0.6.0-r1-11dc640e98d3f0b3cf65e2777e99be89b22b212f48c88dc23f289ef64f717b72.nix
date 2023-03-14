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
      identifier = { name = "checkers"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/haskell-checkers/checkers";
      url = "";
      synopsis = "Check properties on standard classes and data structures.";
      description = "''Checkers'' wraps up the expected properties associated with various\nstandard type classes as QuickCheck properties.  Also some morphism\nproperties.  It also provides arbitrary instances and generator combinators\nfor common data types.\n\n&#169; 2008-2013 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }