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
      identifier = { name = "dice2tex"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "marcelogmillani@gmail.com";
      author = "Marcelo Garlet Millani";
      homepage = "";
      url = "";
      synopsis = "Convert a Diceware wordlist into a printer-ready LaTeX file.";
      description = "Diceware is a convenient way of generating secure and easy to remember passphrases. The idea is to throw a dice multiple times in order to draw a word from a list at random. The generated words are then concatenated, forming a passphrase.\n\nThis program aims to generate a pretty LaTeX document for printing. The document is optimized for human usage, where in each page the first two throws (or only the first one, depending on the lenght of the list) are the same.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dice2tex" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }