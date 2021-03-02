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
      identifier = { name = "hasparql-client"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luiz Damascena";
      author = "Luiz Damascena <luizscence@gmail.com>";
      homepage = "https://github.com/lhpaladin/HaSparql-Client";
      url = "";
      synopsis = "This package enables to write SPARQL queries to remote endpoints.";
      description = "This package enables to write SPARQL queries to remote endpoints. It provides many of the options provided through the SPARQL protocol.\nIt was inspired by HSparql and SPARQL Python Wrapper (Python). For more information see also:\nhttp://www.w3.org/TR/rdf-sparql-protocol/\nhttp://www.w3.org/2005/sparql-results#\nTODO list:\nAdd internal conversion to RDFXML, N3, Turtle and JSON.\nImplement a parser to validate SPARQL queries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }