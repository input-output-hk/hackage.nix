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
      specVersion = "3.4";
      identifier = { name = "dataframe-operations"; version = "2.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2024-2026 Michael Chavinda";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "";
      url = "";
      synopsis = "Column operations, expression DSL, and statistics for the dataframe ecosystem.";
      description = "Untyped column operations (select, filter, sort, join, groupBy,\naggregate, etc.), the expression DSL ('DataFrame.Functions' and\n'DataFrame.Monad'), basic statistics, and the typed wrapper layer\n(@DataFrame.Typed.{Access,Operations,Join,Aggregate,Expr}@). Built\non top of @dataframe-core@ and @dataframe-parsing@; pulled in by\nevery higher-level dataframe satellite.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."dataframe-core".components.sublibs.internal or (errorHandler.buildDepError "dataframe-core:internal"))
          (hsPkgs."dataframe-parsing" or (errorHandler.buildDepError "dataframe-parsing"))
          (hsPkgs."dataframe-parsing".components.sublibs.internal or (errorHandler.buildDepError "dataframe-parsing:internal"))
          (hsPkgs."dataframe-operations".components.sublibs.internal or (errorHandler.buildDepError "dataframe-operations:internal"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        buildable = true;
      };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataframe-core".components.sublibs.internal or (errorHandler.buildDepError "dataframe-core:internal"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = true;
        };
      };
    };
  }