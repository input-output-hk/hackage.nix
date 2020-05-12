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
      identifier = { name = "arpa"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Stefan Fischer";
      maintainer = "Stefan Fischer <sfischer13@ymail.com>";
      author = "Stefan Fischer";
      homepage = "https://github.com/sfischer13/haskell-arpa";
      url = "";
      synopsis = "Library for reading ARPA n-gram models";
      description = "This is a library for reading ARPA n-gram models.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "arpa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arpa" or (errorHandler.buildDepError "arpa"))
            ];
          buildable = true;
          };
        };
      };
    }