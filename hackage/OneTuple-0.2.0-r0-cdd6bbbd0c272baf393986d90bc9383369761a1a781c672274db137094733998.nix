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
      specVersion = "1.4";
      identifier = { name = "OneTuple"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) John Dorsey 2008";
      maintainer = "John Dorsey <haskell@colquitt.org>";
      author = "John Dorsey <haskell@colquitt.org>";
      homepage = "";
      url = "";
      synopsis = "Singleton Tuple";
      description = "Singleton Tuple";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }