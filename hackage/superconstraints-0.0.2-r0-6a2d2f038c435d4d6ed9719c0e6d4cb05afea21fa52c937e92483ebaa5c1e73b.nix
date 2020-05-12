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
      identifier = { name = "superconstraints"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Ryan Trinkle";
      maintainer = "Ryan Trinkle <ryan.trinkle@gmail.com>";
      author = "Ryan Trinkle";
      homepage = "http://github.com/ryantrinkle/superconstraints";
      url = "";
      synopsis = "Access an instance's constraints";
      description = "Constraint manipulation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."type-eq" or (errorHandler.buildDepError "type-eq"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      };
    }