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
      specVersion = "1.8";
      identifier = { name = "hsoptions"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) Jose Raymundo Cruz (jose.r.cruz01@gmail.com)";
      maintainer = "jose.r.cruz01@gmail.com";
      author = "Jose Raymundo Cruz";
      homepage = "https://github.com/josercruz01/hsoptions";
      url = "";
      synopsis = "Haskell library that supports command-line flag processing";
      description = "Haskell library that supports command-line flag processing.\n\nToo see an user guide and list of features go to\n<https://github.com/josercruz01/hsoptions#table-of-contents>.\n\nFlags are declared in the code by using the 'make' function, which takes the\nflag's name, help text and type as arguments.\n\nThe flags are parsed from the command line stream of from a file\nif the @--usingFile \\<filename\\>@ flag is sent to the program.\n\nFlags can be customized by calling configuration function, such as\n'defaultIs' or 'aliasIs', that change how the flag behaves, how it\nis parsed and validated.\n\nThe 'processMain' function needs to be called at the beginning of the 'main'\nfunction. This function takes as arguments:\n\n* The @program description@\n\n* A list of @all declared flags@\n\n* Three callbacks:\n\n* * @success@\n\n* * @failure@\n\n* * @display help@\n\nIf there is any kind of validation error @failure@ is\ncalled with the list of errors. If the @--help@ flag was sent by the user\n@display help@ is called. Otherwise if there are no problems the @success@\nfunction is called.\n\nA default implementation of @failure@ and @display help@ is provided in the\nlibrary ('defaultDisplayHelp', 'defaultDisplayErrors') with a basic bahavior.\n\nBasically @success@ becomes the \\'real\\' main function. It takes as argument\na tuple ('FlagResults', 'ArgsResults'). 'FlagResults' is a data structure\nthat can be used to query flags by using the 'get' function. 'ArgsResults' is\njust an array of 'String' containing the remaining not-flag arguments.\n\nA simple example (more in\n<https://github.com/josercruz01/hsoptions/tree/master/examples>)\n\n> import System.Console.HsOptions\n>\n> userName = make ( \"user_name\",\n>                 , \"the user name of the app\",\n>                 , [ parser stringParser,\n>                   , aliasIs [\"u\"]\n>                   ]\n>                 )\n> userAge = make (\"age\", \"the age of the user\", [parser intParser])\n>\n> flagData = combine [flagToData userName, flagToData userAge]\n>\n> main :: IO ()\n> main = processMain \"Simple example for HsOptions.\"\n>                    flagData\n>                    success\n>                    failure\n>                    defaultDisplayHelp\n>\n> success :: ProcessResults -> IO ()\n> success (flags, args) = do let nextAge = (flags `get` userAge) + 5\n>                            putStrLn (\"Hello \" ++ flags `get` userName)\n>                            putStrLn (\"In 5 years you will be \" ++\n>                                      show nextAge ++\n>                                      \" years old!\")\n>\n> failure :: [FlagError] -> IO ()\n> failure errs = do putStrLn \"Some errors occurred:\"\n>                   mapM_ print errs\n\nAt the 'processMain' function each of the input flags is validated against the\ndeclared flags. Within the @success@ function you can be sure that all required\nflags exist, all flag types are correct and all validation was successful.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "SimpleFlag" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsoptions" or (errorHandler.buildDepError "hsoptions"))
          ];
          buildable = true;
        };
        "ComplexFlag" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsoptions" or (errorHandler.buildDepError "hsoptions"))
          ];
          buildable = true;
        };
        "DependentDefaultsDemo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsoptions" or (errorHandler.buildDepError "hsoptions"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsoptions" or (errorHandler.buildDepError "hsoptions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }