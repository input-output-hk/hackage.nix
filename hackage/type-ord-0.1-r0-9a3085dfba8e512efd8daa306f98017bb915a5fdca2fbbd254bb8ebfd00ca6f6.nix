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
      identifier = { name = "type-ord"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-level comparison operator";
      description = "Type-level comparison operator with instances for ()-terminated\n@type-digit@ numerals until <http://hackage.haskell.org/trac/ghc/ticket/1894>\nis resolved.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."type-booleans" or (errorHandler.buildDepError "type-booleans"))
          (hsPkgs."type-spine" or (errorHandler.buildDepError "type-spine"))
          (hsPkgs."type-digits" or (errorHandler.buildDepError "type-digits"))
        ];
        buildable = true;
      };
    };
  }