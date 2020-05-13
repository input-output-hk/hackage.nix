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
      specVersion = "1.6";
      identifier = { name = "uu-options"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "S Doaitse Swierstra ";
      maintainer = "Doaitse Swierstra      ";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "Parse command line options using uu-interleave and uu-parsinglib";
      description = "Using the new Control.Applicative.Interleaved module we use the uu-parsinglib library to construct extremely concise command line processors, which provide\nhelpful information when called incorrectly.\n\nThe module contains a module `OptionsDemo` which serves as an example of how to use the various options of the module; you may take a look at the source code.\n\nThe package also installs the program `option-demo`\nwhich may be called from the command line to see what happens for the various options. It also contains a function demo which may be called from within ghci to experiment.\n\nBackground  information can be found in a Technical Report at <http://www.cs.uu.nl/research/techreps/UU-CS-2013-005.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."uu-interleaved" or (errorHandler.buildDepError "uu-interleaved"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."lenses" or (errorHandler.buildDepError "lenses"))
          ];
        buildable = true;
        };
      exes = {
        "demo-options" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            (hsPkgs."uu-interleaved" or (errorHandler.buildDepError "uu-interleaved"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."lenses" or (errorHandler.buildDepError "lenses"))
            ];
          buildable = true;
          };
        };
      };
    }