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
      identifier = { name = "forger"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Stefan Fischer";
      maintainer = "Stefan Fischer <sfischer13@ymail.com>";
      author = "Stefan Fischer";
      homepage = "https://github.com/sfischer13/haskell-forger";
      url = "";
      synopsis = "Library for generating fake placeholder data";
      description = "This is a library for generating fake placeholder data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "forger" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."forger" or (errorHandler.buildDepError "forger"))
          ];
          buildable = true;
        };
      };
    };
  }