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
      specVersion = "3.0";
      identifier = { name = "grab-form"; version = "0.0.0.8"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/grab";
      url = "";
      synopsis = "Applicative parsers for form parameter lists";
      description = "@Grab@ is an @Applicative@ for consuming lists of\n(name, value) parameters.\n\n== Example\n\nParser:\n\n> nameStateAndQAs :: Grab EnglishSentence (Text, Text, [QA])\n> nameStateAndQAs =\n>     (,,)\n>         <$> at \"name\" (only text)\n>         <*> at \"state\" (only text)\n>         <*> at \"security\" (only (natList (only qa)))\n>\n> qa :: Grab EnglishSentence QA\n> qa =\n>     QA\n>         <$> at \"Q\" (only text)\n>         <*> at \"A\" (only text)\n\nInput:\n\n> name:           Alonzo\n> state:          Montana\n> security[1].Q:  What is your favorite hobby?\n> security[1].A:  watching cars\n> security[2].Q:  What is your oldest sibling's name?\n> security[2].A:  melman\n> security[3].Q:  What was the make and model of your first car?\n> security[3].A:  bmw x5\n\nOutput:\n\n> ( \"Alonzo\"\n> , \"Montana\"\n> , [ QA\n>       { qa_question = \"What is your favorite hobby?\"\n>       , qa_answer = \"watching cars\"\n>       }\n>   , QA\n>       { qa_question = \"What is your oldest sibling's name?\"\n>       , qa_answer = \"melman\"\n>       }\n>   , QA\n>       { qa_question = \"What was the make and model of your first car?\"\n>       , qa_answer = \"bmw x5\"\n>       }\n>   ]\n> )";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."grab" or (errorHandler.buildDepError "grab"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."grab" or (errorHandler.buildDepError "grab"))
            (hsPkgs."grab-form" or (errorHandler.buildDepError "grab-form"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }