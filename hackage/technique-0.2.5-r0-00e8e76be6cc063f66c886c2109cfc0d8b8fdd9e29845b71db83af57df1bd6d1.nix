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
      specVersion = "2.0";
      identifier = { name = "technique"; version = "0.2.5"; };
      license = "MIT";
      copyright = "© 2002-2020 Athae Eredh Siniath and Others";
      maintainer = "Andrew Cowie <istathar@gmail.com>";
      author = "Andrew Cowie <istathar@gmail.com>";
      homepage = "https://github.com/technique-lang/technique#readme";
      url = "";
      synopsis = "Procedures and Sequences";
      description = "A domain specific lanaguage for procedures.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "technique-internal" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."ivar-simple" or (errorHandler.buildDepError "ivar-simple"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
          buildable = true;
        };
      };
      exes = {
        "technique" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."ivar-simple" or (errorHandler.buildDepError "ivar-simple"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."technique".components.sublibs.technique-internal or (errorHandler.buildDepError "technique:technique-internal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "check" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
            (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
            (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ivar-simple" or (errorHandler.buildDepError "ivar-simple"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."technique".components.sublibs.technique-internal or (errorHandler.buildDepError "technique:technique-internal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
          buildable = true;
        };
      };
    };
  }