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
      identifier = { name = "infinite-search"; version = "0.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Palmer <lrpalmer@gmail.com>";
      author = "Martin Escardo";
      homepage = "http://github.com/luqui/infinite-search";
      url = "";
      synopsis = "Exhaustively searchable infinite sets.";
      description = "An implementation of Martin Escardo's exhaustively searchable sets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }