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
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-src"; version = "1.0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Simon Marlow, Sven Panne and Noel Winstanley";
      homepage = "";
      url = "";
      synopsis = "Support for manipulating Haskell source code";
      description = "The 'haskell-src' package provides support for manipulating Haskell\nsource code. The package provides a lexer, parser and\npretty-printer, and a definition of a Haskell abstract syntax tree\n(AST). Common uses of this package are to parse or generate Haskell\n98 code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          ];
        buildable = true;
        };
      };
    }