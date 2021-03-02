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
      identifier = { name = "hsparql"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rob Stewart <robstewart57@gmail.com>";
      author = "Jeff Wheeler";
      homepage = "https://github.com/robstewart57/hsparql";
      url = "";
      synopsis = "A SPARQL query generator and DSL, and a client to query a SPARQL server.";
      description = "hsparql includes a DSL to easily create queries, as well as methods to\nsubmit those queries to a SPARQL server, returning the results as simple\nHaskell data structures.\nExample queries are included in the tests:\n<https://github.com/robstewart57/hsparql/blob/master/tests/DBPedia.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."rdf4h" or (errorHandler.buildDepError "rdf4h"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-hsparql" = {
          depends = [
            (hsPkgs."hsparql" or (errorHandler.buildDepError "hsparql"))
            (hsPkgs."rdf4h" or (errorHandler.buildDepError "rdf4h"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }