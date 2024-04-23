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
      identifier = { name = "graphted"; version = "0.2.5.1"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "mayreply@aaronfriel.com";
      author = "Aaron Friel";
      homepage = "https://github.com/aaronfriel/graphted#readme";
      url = "";
      synopsis = "Graph indexed monads.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
        ];
        buildable = true;
      };
    };
  }