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
      identifier = { name = "Bang"; version = "0.1.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "bkovach13@gmail.com";
      author = "Benjamin Kovach";
      homepage = "https://github.com/5outh/Bang/";
      url = "";
      synopsis = "A Drum Machine DSL for Haskell";
      description = "This library consists of a DSL for piecing together drum compositions. It uses a MIDI backend\nand is only currently available for use on Mac OSX. Much of the library was inspired by previous work done by Yale's\n@<http://haskell.cs.yale.edu/euterpea/ Euterpea>@ project and Paul Hudak\\'s @<http://cpsc.yale.edu/sites/default/files/files/tr1259.pdf paper>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."hmidi" or (errorHandler.buildDepError "hmidi"))
          ];
        buildable = true;
        };
      };
    }