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
      identifier = { name = "data-structure-inferrer"; version = "1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Aleksander Balicki <balicki.aleksander@gmail.com>";
      author = "Aleksander Balicki";
      homepage = "http://github.com/alistra/data-structure-inferrer";
      url = "";
      synopsis = "Program that infers the fastest data structure available for your program";
      description = "This project is meant to be a compiler feature/wrapper that analyzes your code and chooses the best data structure depending on your source code. It analyzes the functions used on a wildcard data structure and chooses the type of structure that minimizes the time complexity. It will support C language and hopefully some other languages too.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dsinf" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }