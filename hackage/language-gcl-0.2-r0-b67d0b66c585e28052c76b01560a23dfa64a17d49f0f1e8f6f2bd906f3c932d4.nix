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
      identifier = { name = "language-gcl"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "rhymoid@gmail.com";
      author = "Stijn van Drongelen";
      homepage = "";
      url = "";
      synopsis = "Something similar to Dijkstra's guarded command language";
      description = "language-gcl provides the abstract syntax and parsers for\nbasic building blocks for programming languages,\nbased on Edsger W. Dijkstra's guarded command language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          ];
        buildable = true;
        };
      };
    }