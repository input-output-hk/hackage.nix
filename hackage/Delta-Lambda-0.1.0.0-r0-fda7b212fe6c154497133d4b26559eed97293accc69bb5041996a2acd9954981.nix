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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Delta-Lambda"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "listofoptions@gmail.com";
      author = "James M";
      homepage = "";
      url = "";
      synopsis = "A demonstration interpreter for type system delta-lambda (of N.G. De-bruijn)";
      description = "A demonstration package for the type system delta-lambda (of N.G. De-bruijn)\nin ~1000 lines of haskell.\nthis is at the moment exceptionally ALPHA level software.\nno tests for the validity of the type checker (only the\ntype synthesizer), or the parser, or the repl, etc...\nthere are dragons in here (soon to be tamed), and lots\nof them!\ntodo: profiling, unit testing, formal verification of type correctness\nadequacy proof of the implemented type system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Delta-Lambda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }