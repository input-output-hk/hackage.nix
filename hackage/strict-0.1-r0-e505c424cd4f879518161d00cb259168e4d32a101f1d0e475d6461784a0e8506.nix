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
      identifier = { name = "strict"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2007 by Roman Leshchinskiy";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://www.cse.unsw.edu.au/~rl/code/strict.html";
      url = "";
      synopsis = "Strict data types";
      description = "This package provides strict versions of some standard Haskell data\ntypes (pairs, Maybe and Either at the moment).";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }