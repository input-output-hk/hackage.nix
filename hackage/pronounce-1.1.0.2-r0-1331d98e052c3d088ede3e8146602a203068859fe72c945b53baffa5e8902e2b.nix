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
      identifier = { name = "pronounce"; version = "1.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ngoodman@uchicago.edu";
      author = "Noah Goodman";
      homepage = "https://github.com/buonuomo/Text.Pronounce";
      url = "";
      synopsis = "A library for interfacing with the CMU Pronouncing Dictionary";
      description = "Text.Pronounce is a Haskell library for interfacing and\nCMU Pronouncing Dictionary. It is based off of Allison\nParrish's python library called 'pronouncing', and it\nexports much of the same functionality. The underlying data\nstructure that I used for representing the dictionary was a\n@Map@ from entries to lists of their possible phones as\nrepresented in the CMU dict. Many functions rely on access\nto the CMU dict, so I decided to encompass this underlying\nstate of the dictionary by using the Reader Monad.\n\nWhen working with this library, the default setting is to load\nthe dictionary from an included binary file, but the user\nhas the option to parse the dictionary from a unicode text\nfile, or encode the text file into binary themselves. For\nthis last purpose, I included the script I originally used\nto encode the dictionary into a binary in the @examples@\nfolder.\n\nFinally, I would like to note that\n@Text.Pronounce.ParseDict@ operates on utf8 encoded files,\ndue to compatibility with @Text@, which is utf encoded,\ndespite the fact the original CMU Pronouncing Dictionary\nuses latin1 encoding. Because of this, if the user wants to\nuse a version of the CMU Dictionary other than the included\none, they must change to encoding to utf before parsing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }