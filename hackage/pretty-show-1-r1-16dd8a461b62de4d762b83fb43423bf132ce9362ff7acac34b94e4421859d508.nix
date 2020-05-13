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
      specVersion = "1.2";
      identifier = { name = "pretty-show"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://wiki.github.com/yav/pretty-show";
      url = "";
      synopsis = "Tools for working with derived Show instances.";
      description = "We provide a library and an executable for\nworking with derived Show instances.  By using\nthe library, we can parse derived Show instances\ninto a generic data structure.  The tool uses\nthe library to produce human-readable versions\nof Show instances, which can be quite handy\nfor debugging Haskell programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "ppsh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }