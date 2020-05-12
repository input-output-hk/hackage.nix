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
      identifier = { name = "halberd"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hesselink@gmail.com";
      author = "Erik Hesselink, Simon Meier, Tom Lokhorst, Roman Cheplyaka";
      homepage = "http://github.com/haskell-suite/halberd/";
      url = "";
      synopsis = "A tool to generate missing import statements for Haskell modules.";
      description = "This tool uses <https://github.com/haskell-suite\nthe Haskell Suite> to determine the unbound\nvariables and types in your source code, and\ngenerate import statements for them. If there are\nmultiple choices, it provides a simple\ninteractive menu for you to choose from. See the\nhome page for more details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "halberd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-packages" or (errorHandler.buildDepError "haskell-packages"))
            (hsPkgs."haskell-names" or (errorHandler.buildDepError "haskell-names"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }