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
      identifier = { name = "docopt"; version = "0.6.0.2"; };
      license = "MIT";
      copyright = "(c) 2013 Ryan Artecona ";
      maintainer = "ryanartecona@gmail.com";
      author = "Ryan Artecona";
      homepage = "https://github.com/docopt/docopt.hs";
      url = "";
      synopsis = "A command-line interface parser that will make you smile";
      description = "Docopt parses command-line interface usage text that adheres to a familiar syntax, and from it builds a command-line argument parser that will ensure your program is invoked correctly with the available options specified in the usage text. This allows the developer to write a usage text and get an argument parser for free.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }